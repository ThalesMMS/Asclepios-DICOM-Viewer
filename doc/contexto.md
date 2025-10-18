Estado Atual

src/gui/vtkwidgetdicom.cpp:276 garante que o array de escalares ativo tenha nome consistente e que o vtkImageData propague tipo/componente corretos; o vtkTrivialProducer e o vtkImageMapToWindowLevelColors agora enxergam esses metadados (src/gui/vtkwidgetdicom.cpp:282, src/gui/vtkwidgetdicom.cpp:298).
O ator 2D passou a consumir o OutputPort do filtro de janela/nível, preservando o pipeline original (src/gui/vtkwidgetdicom.cpp:315).
viewer.log confirma carregamento da série KARLA, definição de janela/nível e espaçamentos sanitizados, sem faltas de escalares.
vtk-headless.log continua exibindo apenas GL_INVALID_OPERATION em praticamente toda chamada OpenGL, sem mais a mensagem “Missing scalar field”.
Headless (tools\run-headless.ps1) e UI reportados pelo usuário ainda rendem viewport totalmente preto; a sonda de HU varia apenas no canto superior direito.
Problema Aberto

Renderização falha após a configuração da câmera: vtkOpenGLRenderer::DeviceRender, vtkOpenGLCamera::Render, vtkWindowToImageFilter::Render acumulam 16 erros GL_INVALID_OPERATION cada. Não há nova pista nos logs sobre a causa específica; nenhum fallback de software entra em ação.
Pipeline de dados parece intacto (names e ranges coerentes), então a hipótese atual é bug no estágio de mapeamento/atores ou no estado GL inicializado para off-screen (p.ex. viewport/clipping ainda inconsistente).
Panorama do Pipeline (Leitura → Display)

Image::getDicomVolume() (carregado via vtkWidget2D::initImageReader) monta DicomVolume com vtkImageData, geometria e metadados (spacing, slope/intercept).
vtkWidgetDICOM::setVolume():
Ajusta direção, aplica rescale se necessário, marca array “Scalars” como ativo (vtkImageData, vtkTrivialProducer, filtro de WL) e atualiza vtkImageMapToWindowLevelColors.
vtkWindowLevelFilter define tabela e parâmetros; o filtro gera saída luminance.
vtkTrivialProducer fornece o vtkImageData para o pipeline.
vtkImageMapToWindowLevelColors produz a textura final usada pelo ator.
vtkImageActor (via mapper ou SetInputData) alimenta o renderer do vtkWidgetDICOM; câmera é reposicionada em UpdateDisplayExtent, clipping e paralelo escalados.
Render off-screen (Render() no widget) — estágio que ainda aborta por erros GL antes de “limpar” ou desenhar a textura.
Sugestões para o Próximo Código

Inspecionar estado OpenGL antes do render (avaliar se vtkOpenGLState acusa viewport/scissor inválidos após UpdateDisplayExtent).
Testar mapper alternativo (vtkImageSliceMapper) ou forçar vtkOpenGLImageSliceMapper::SetUseAutoAdjustImageQuality(false) para reduzir dependência de FBO.
Validar se o renderer possui layers sobrepostos (overlay) interferindo; conferência em vtkWidget2D::initRenderingLayers() e possíveis chamadas adicionais de SetLayer.
Considerar render local (não off-screen) para diferenciar problema de contexto headless vs. pipeline.
Logs atuais úteis para referência:

viewer.log (root) – inicia em 12:33:56, mostra carregamento e setup.
vtk-headless.log (root) – ~3k linhas de warnings/erros GL; nenhuma menção a “Missing scalar field” após ajustes.
Essa é a fotografia do sistema: dados chegam, o filtro recebe escalares, mas a fase OpenGL permanece quebrada e impede visualização.