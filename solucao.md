O problema principal que impede as imagens de aparecerem no viewport (enquanto os thumbnails funcionam) está na gestão do ciclo de vida do objeto vtkDICOMReader dentro da sua classe core::Image.

Em resumo, o objeto que lê os dados da imagem DICOM para o viewport é destruído prematuramente, deixando o resto do pipeline de renderização sem dados para exibir.

Análise Detalhada do Problema
Geração de Thumbnails vs. Renderização no Viewport: São dois caminhos de código distintos.

Thumbnails (Funciona): No arquivo src/gui/studylist.cpp, a função createImageForItem usa a biblioteca DCMTK (DicomImage) diretamente para ler o arquivo DICOM, gerar uma imagem BMP em escala e exibi-la como um ícone. Este processo é autônomo e não depende do pipeline de renderização principal com VTK.

Viewport (Não Funciona): A renderização principal é feita pela classe vtkWidget2D, que depende de um vtkDICOMReader para carregar os dados da imagem.

O Ponto da Falha: A falha está no método getImageReader() da classe asclepios::core::Image (arquivo src/core/image.cpp).

C++
// src/core/image.cpp - VERSÃO COM PROBLEMA

vtkSmartPointer<vtkDICOMReader> asclepios::core::Image::getImageReader() const
{
    if (m_imageReader) // m_imageReader é um vtkWeakPointer, então geralmente é nulo aqui
    {
        return vtkSmartPointer<vtkDICOMReader>(m_imageReader);
    }

    // 1. Um leitor local é criado na pilha da função.
    vtkNew<vtkDICOMReader> localReader;
    localReader->SetFileName(m_path.c_str());
    localReader->Update();

    // ... (lógica de validação)

    // 2. A função retorna um smart pointer para o objeto local.
    return localReader;
    // 3. Ao sair da função, 'localReader' é destruído, e a memória do objeto é liberada.
}
Causa Raiz: O objeto localReader é criado dentro do escopo da função getImageReader(). Quando a função retorna, este objeto é automaticamente destruído. Embora um vtkSmartPointer seja retornado, ele passa a apontar para uma área de memória que já foi liberada (um "dangling pointer").

Consequência: Em src/gui/vtkwidget2d.cpp, quando a renderização tenta usar este leitor (que não existe mais), ele não encontra dados de imagem (vtkImageData), e nada é desenhado no viewport. A tela fica preta ou vazia.

Solução Proposta
Para corrigir o problema, o objeto vtkDICOMReader precisa pertencer à instância da classe Image, garantindo que ele persista enquanto for necessário.

Passo 1: Modificar src/core/image.h

Altere o tipo do membro m_imageReader para que ele possa gerenciar o ciclo de vida do leitor. Use mutable para permitir que o método const getImageReader() possa criar e armazenar o leitor na primeira chamada.

Arquivo: src/core/image.h

Linha: 95

Substitua isto:

C++
vtkWeakPointer<vtkDICOMReader> m_imageReader = {};
Por isto:

C++
mutable vtkSmartPointer<vtkDICOMReader> m_imageReader = {};
Passo 2: Modificar src/core/image.cpp

Ajuste o método getImageReader() para criar, armazenar em cache e retornar o membro m_imageReader.

Arquivo: src/core/image.cpp

Método: asclepios::core::Image::getImageReader()

Substitua a implementação atual por esta:

C++
vtkSmartPointer<vtkDICOMReader> asclepios::core::Image::getImageReader() const
{
    // Se o leitor já foi criado, apenas o retorne.
    if (m_imageReader)
    {
        return m_imageReader;
    }

    // Se não, crie um novo, armazene no membro da classe e configure-o.
    m_imageReader = vtkSmartPointer<vtkDICOMReader>::New();
    m_imageReader->SetFileName(m_path.c_str());

    CodecRegistrationGuard guard;
    m_imageReader->Update(); // 'Update' é chamado no membro da classe.

    // A lógica de validação permanece a mesma.
    const auto* const metaData = m_imageReader->GetMetaData();
    auto* const output = m_imageReader->GetOutput();
    auto* const pointData = output ? output->GetPointData() : nullptr;
    auto* const scalars = pointData ? pointData->GetScalars() : nullptr;
    if (!metaData || !scalars)
    {
        vtkGenericWarningMacro(<< "[Image] vtkDICOMReader produced incomplete output for " << m_path
                               << " (metadata or pixel data missing)");
    }

    // Retorna o membro da classe, que agora tem o ciclo de vida gerenciado.
    return m_imageReader;
}
Após aplicar essas duas alterações e recompilar o projeto, o vtkDICOMReader persistirá corretamente, fornecendo os dados de imagem necessários para o pipeline de renderização do VTK, e as imagens devem aparecer no viewport.