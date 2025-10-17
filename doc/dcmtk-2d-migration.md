# DCMTK 2D Rendering Migration Plan

## Proof of concept summary
- O `Widget2D` agora tenta carregar estudos 2D com DCMTK antes de recorrer ao pipeline VTK. O fluxo inicia em `startDcmtkRendering`, que aciona o carregamento assíncrono das fatias e oculta o widget VTK até a conclusão.【F:src/gui/widget2d.cpp†L129-L189】【F:src/gui/widget2d.cpp†L191-L243】
- As imagens são decodificadas em `loadFramesWithDcmtk`, reutilizando janela/nivel e a mesma lógica de geração de bitmap usada nas miniaturas, mas convertendo diretamente para `QImage`/`QPixmap` em memória.【F:src/gui/widget2d.cpp†L45-L127】
- Após o término do carregamento, `onImagesLoaded` popula o `QLabel` dedicado, sincroniza a barra de rolagem vertical e preserva o fallback para VTK quando necessário.【F:src/gui/widget2d.cpp†L245-L298】【F:src/gui/widget2d.cpp†L300-L352】

## Pontos de integração
### Window/Level
- O protótipo aplica `WindowCenter`/`WindowWidth` diretamente na conversão DCMTK, garantindo paridade com o VTK e com o gerador de miniaturas.【F:src/gui/widget2d.cpp†L69-L107】
- A infraestrutura de VTK ainda usa `WindowLevelFilter` para aplicar LUTs e inversão, e precisará ser substituída por um estágio equivalente na nova pilha antes de desativar o VTK.【F:src/gui/windowlevelfilter.cpp†L1-L62】

### Navegação por slices
- A barra de rolagem agora controla tanto o VTK quanto o novo renderizador via `connectScroll`/`onChangeImage`, permitindo alternância transparente entre os pipelines.【F:src/gui/widget2d.cpp†L368-L407】【F:src/gui/widget2d.cpp†L409-L440】
- O pipeline DCMTK produz todas as fatias antecipadamente, preservando o número de quadros esperado para séries multi-frame e conjuntos single-frame.【F:src/gui/widget2d.cpp†L45-L127】

### Overlays e interações adicionais
- As sobreposições (número da imagem, ângulo de rotação, etc.) continuam atualizadas pelo `vtkWidget2D::updateOvelayImageNumber`, exigindo um equivalente no pipeline Qt/DCMTK para manter paridade visual.【F:src/gui/vtkwidget2d.cpp†L311-L341】【F:src/gui/vtkwidget2dinteractorstyle.cpp†L114-L233】
- Interações avançadas (zoom, pan, invert) permanecem no `vtkWidget2DInteractorStyle`; será necessário reimplementar essas transformações usando eventos Qt ao migrar completamente.【F:src/gui/vtkwidget2dinteractorstyle.cpp†L48-L233】

## Estratégia de migração incremental
1. **Encapsular o carregamento DCMTK**: evoluir `loadFramesWithDcmtk` para retornar um objeto de volume com metadados de escala e overlays, permitindo compartilhar dados entre 2D, MPR e 3D sem duplicação.【F:src/gui/widget2d.cpp†L45-L127】
2. **Unificar controles de janela/nível**: introduzir um serviço comum que atualize simultaneamente o `QImage` e os filtros VTK enquanto ambos coexistirem; remover gradualmente dependências de `WindowLevelFilter` quando o serviço Qt estiver pronto.【F:src/gui/windowlevelfilter.cpp†L1-L62】【F:src/gui/widget2d.cpp†L69-L107】
3. **Migrar interações e overlays**: replicar `updateOvelayImageNumber` e os gestos do interactor VTK usando eventos Qt, garantindo que `onChangeImage`, rolagem e transformações tenham a mesma assinatura de sinal/slot para evitar regressões.【F:src/gui/widget2d.cpp†L368-L440】【F:src/gui/vtkwidget2d.cpp†L311-L341】
4. **Ativar modo híbrido controlável**: manter o fallback automático (`handleDcmtkFailure`) até que métricas de desempenho e testes de fidelidade assegurem paridade; oferecer uma flag de build ou preferência avançada para alternar entre pipelines durante o período de transição.【F:src/gui/widget2d.cpp†L300-L352】【F:src/gui/widget2d.cpp†L129-L189】
5. **Retirar VTK gradualmente**: após validar controles e overlays, substituir as chamadas em `renderWithVtk` por adaptadores para o novo pipeline e remover dependências de VTK no widget 2D, preservando VTK apenas nas telas MPR/3D.【F:src/gui/widget2d.cpp†L191-L243】

## Validação de desempenho e fidelidade
- **Conjuntos de estudos**: testar séries single-frame (CR, DX), multi-frame (MR, CT volumétrico), compressão JPEG e dados com inversão de escala para capturar variações de pixel data.【F:src/gui/widget2d.cpp†L45-L127】
- **Comparação visual**: capturar o mesmo índice de slice via pipeline DCMTK e VTK (usando o fallback manual) e comparar histogramas/valores médios por pixel para garantir que a aplicação de janela/nivel permaneça idêntica.【F:src/gui/widget2d.cpp†L69-L107】【F:src/gui/widget2d.cpp†L191-L243】
- **Métricas de desempenho**: instrumentar o tempo de decodificação e a latência de troca de slice em `startDcmtkRendering` e `onImagesLoaded`, registrando os tempos para cada modalidade antes de desligar o VTK.【F:src/gui/widget2d.cpp†L129-L189】【F:src/gui/widget2d.cpp†L245-L298】
- **Critérios de saída**: somente desativar o pipeline VTK após garantir paridade de janela/nivel, overlays, interações e tempo de resposta (p95) equivalente ou superior ao baseline VTK em estudos representativos.【F:src/gui/widget2d.cpp†L129-L243】【F:src/gui/vtkwidget2d.cpp†L311-L341】
