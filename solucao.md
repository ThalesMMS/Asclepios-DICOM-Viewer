O que no seu código pode explicar o “viewport preto”
Checagem de render window ambígua (array vs. ponteiro)
No Widget2D::render() você faz o guard:
if (m_qtvtkWidget && m_vtkWidget && m_renderWindow->Get())
Só que m_renderWindow é um array de vtkSmartPointer, e esse ->Get() cai somente no primeiro elemento por decaimento de array. Funciona “por acaso”, mas é frágil e pode mascarar um nullptr. Prefira testar a render window real do QVTK:
→ troque por m_qtvtkWidget->GetRenderWindow() ou acesse explicitamente m_renderWindow[0]. 【
Asclepios-DICOM-Viewer_project_…
】
QVTK sem política de tamanho expansiva
No 2D você cria o QVTKOpenGLNativeWidget, mas não seta SizePolicy. No MPR você seta Expanding x Expanding (e fica tudo certo), no 2D não — em alguns layouts isso deixa o canvas com área efetiva 0×0 (nada renderiza, só vemos a barra de rolagem e o label quando visíveis).
– No MPR: m_qtvtkWidgets[i]->setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding); 【
Asclepios-DICOM-Viewer_project_…
】
– No 2D: faltando linha equivalente em initData() logo após criar o widget. 【
Asclepios-DICOM-Viewer_project_…
】
Ordem e reaproveitamento do widget no closeEvent
No Widget2D::closeEvent você chama initView(); initData();. initData() deleta o m_qtvtkWidget e cria outro, mas esse novo não é re-adicionado ao layout (porque o layout foi montado antes, em initView()). Isso deixa o layout apontando para um widget destruído e o novo widget fica “órfão”. Pode gerar viewport invisível ao reabrir/trocar abas. A ordem correta é primeiro criar dados/widgets e depois montar o layout. 【
Asclepios-DICOM-Viewer_project_…
】【
Asclepios-DICOM-Viewer_project_…
】
Formato OpenGL padrão do QVTK não garantido
Não vi nesse trecho o QSurfaceFormat::setDefaultFormat(QVTKOpenGLNativeWidget::defaultFormat()) no main(). Sem isso, em várias combinações (Wayland/NVIDIA, Windows/Intel/ANGLE) o QVTKOpenGLNativeWidget cria um contexto que renderiza preto. Thumbnails continuam ok porque usam QImage/QPixmap, fora do pipeline GL. (Esse ponto é externo ao arquivo enviado, mas é a causa nº1 que encontro em VTK+Qt 5/6.)
(Menor, mas coerência) 2D não liga double-buffer explicitamente
No 3D você seta SetDoubleBuffer(true) ao criar a render window; no 2D não. Em geral vem ligado por padrão, mas equalizar o setup ajuda a tirar variáveis ambientais da jogada. 【
Asclepios-DICOM-Viewer_project_…
】
Correções cirúrgicas (mínimas e de baixo risco)
A. Conserte o guard de render window (evita falso-negativo / nullptr silencioso)
Em Widget2D::render():
- if (m_qtvtkWidget && m_vtkWidget && m_renderWindow->Get())
+ if (m_qtvtkWidget && m_vtkWidget && m_qtvtkWidget->GetRenderWindow())
ou, se preferir, cheque diretamente:
- if (m_qtvtkWidget && m_vtkWidget && m_renderWindow->Get())
+ if (m_qtvtkWidget && m_vtkWidget && m_renderWindow[0])
【
Asclepios-DICOM-Viewer_project_…
】
B. Garanta que o canvas tenha área útil
Em Widget2D::initData() (logo após criar o m_qtvtkWidget):
  m_qtvtkWidget = new QVTKOpenGLNativeWidget(this);
+ m_qtvtkWidget->setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);
  m_qtvtkWidget->SetRenderWindow(m_renderWindow[0]);
【
Asclepios-DICOM-Viewer_project_…
】
C. Corrija a ordem no closeEvent (evita layout com ponteiro morto)
Em Widget2D::closeEvent(QCloseEvent* e):
- initView();
- initData();
+ initData();
+ initView();
  QWidget::closeEvent(e);
(Alternativa: antes de delete m_qtvtkWidget; use layout()->removeWidget(m_qtvtkWidget); e, depois de recriar, layout()->addWidget(m_qtvtkWidget);.) 【
Asclepios-DICOM-Viewer_project_…
】【
Asclepios-DICOM-Viewer_project_…
】
D. Configure o formato GL do QVTK no main() (evita viewport preto)
No main.cpp, antes de criar o QApplication:
#include <QSurfaceFormat>
#include <QVTKOpenGLNativeWidget.h>

int main(int argc, char** argv) {
  QSurfaceFormat::setDefaultFormat(QVTKOpenGLNativeWidget::defaultFormat());
  QApplication app(argc, argv);
  ...
}
(É idempotente e seguro: se já estiver, ótimo; se não, isso costuma “destravar” a renderização.)
E. (Opcional) Alinhe com o 3D e ligue double-buffer
Logo após SetRenderWindow(m_renderWindow[0]);:
m_qtvtkWidget->GetRenderWindow()->SetDoubleBuffer(true);
No 3D vocês já fazem isso. 【
Asclepios-DICOM-Viewer_project_…
】
Sanidade rápida em runtime (2–3 prints que valem ouro)
Depois de onRenderFinished() e antes de m_vtkWidget->render():
auto* rw = m_qtvtkWidget->GetRenderWindow();
qCInfo(lcWidget2D) << "rw size:" << rw->GetSize()[0] << rw->GetSize()[1]
                   << "renderers:" << rw->GetRenderers()->GetNumberOfItems();
Se o tamanho vier 0×0, é layout/política de tamanho. Se renderers == 0, algo não “pluggou” entre vtkWidget2D e o RenderWindow (mas seu initRenderingLayers() configura a camada e overlay corretamente quando a janela existe). 【
Asclepios-DICOM-Viewer_project_…
】
Ative logs para ver o caminho feliz/erro (vocês já usam Q_LOGGING_CATEGORY):
QT_LOGGING_RULES="asclepios.gui.widget2d.info=true;asclepios.gui.vtkwidget2d.info=true"
A linha “Render requested …” deve aparecer quando o render começa; se cair em onRenderFailed, o widget é escondido propositalmente (outra pista visual). 【
Asclepios-DICOM-Viewer_project_…
】【
Asclepios-DICOM-Viewer_project_…
】【
Asclepios-DICOM-Viewer_project_…
】
Por que os thumbnails aparecem?
Porque o pipeline de thumbs não depende do QVTKOpenGLNativeWidget; ele usa leitura/decodificação + QImage/QPixmap. Já o viewport 2D passa por: QVTKOpenGLNativeWidget → vtkGenericOpenGLRenderWindow → vtkImageViewer2 (via vtkWidgetDICOM) + renderers/overlays em camadas. Se o contexto/superfície GL está errado, ou o widget está sem área, o pipeline roda e não pinta na tela.
Bônus: dois pequenos “footguns” que valem revisar
Render layers do 2D estão corretas (layer 0 imagem, layer 1 overlay, SetNumberOfLayers(2)), então não é overlay “em cima da nada” — ponto positivo. 【
Asclepios-DICOM-Viewer_project_…
】
MPR Window/Level invertidos (não é a causa do “preto” do 2D, mas pode confundir percepção): no MPR há inversão entre “window” e “level” em um ponto (cheque se não está trocado). (Observação feita por padrão; não encontrei inversão explícita aqui no trecho 2D.)
Resumo executivo
Ajuste o guard do render window (A).
Garanta size policy expansiva no QVTK do 2D (B).
Corrija a ordem no closeEvent (C).
(Quase sempre decisivo) configure o GL default format do QVTK no main() (D).
Igualar double-buffer (E) é opcional, mas deixa o 2D simétrico ao 3D.