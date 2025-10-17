# Utilitário legado de fallback VTK

Este documento descreve como executar um viewer 2D baseado em VTK fora do build principal, útil para comparar resultados com o novo pipeline DCMTK.

## Pré-requisitos
- Ambiente Visual Studio/Qt configurado para o projeto principal (VTK 8.2 + Qt 5.15).
- Acesso aos mesmos datasets DICOM utilizados no viewer DCMTK.

## Passo a passo
1. **Criar uma cópia do repositório**
   ```bash
   git worktree add ../asclepios-vtk-fallback main
   cd ../asclepios-vtk-fallback
   ```
2. **Restaurar o widget VTK**
   - Reaplicar o commit anterior à migração (`git checkout HEAD^` após sincronizar com `main`) ou cherry-pick de um commit que contenha `Widget2D` com VTK.
   - Alternativamente, extraia apenas `src/gui/widget2d.{h,cpp}` e `widget2d.ui` do histórico com `git show <commit>:src/gui/widget2d.cpp > src/gui/widget2d.cpp`.
3. **Configurar projeto auxiliar**
   - Crie um projeto Qt Widgets vazio (`Widget2DLegacy.pro` ou `.vcxproj`).
   - Adicione `widget2d.*`, `vtkwidget2d.*`, `vtkwidgetbase.*` e dependências necessárias (respeite includes para VTK/Qt/Asclepios core).
   - Ajuste o `CMake`/`.vcxproj` para linkar contra VTK (`vtkRenderingOpenGL2`, `vtkInteractionStyle`, etc.) e DCMTK, reutilizando as variáveis do ambiente principal.
4. **Executar comparação**
   - Carregue o mesmo estudo nos dois viewers (DCMTK principal e auxiliar VTK).
   - Capture logs/prints das diferenças e registre no `doc/dcmtk-2d-migration.md`.

## Boas práticas
- Não comite o utilitário auxiliar nem os arquivos de projeto adicionais ao repositório principal.
- Use branches efêmeras para transportar correções pontuais de VTK que auxiliem na depuração do pipeline DCMTK.
- Ao finalizar a investigação, remova o worktree auxiliar (`git worktree remove ../asclepios-vtk-fallback`).
