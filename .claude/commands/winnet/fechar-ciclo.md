---
description: Fecha um ciclo Ox — atualiza Parâmetros, Contexto, Memória e faz o commit [Ox dd/mm]
---

Feche o ciclo: $ARGUMENTS  (formato esperado: `O4 19/08`)

**Pré-condição obrigatória:** o LEO já aprovou explicitamente as alterações do bloco G. Se não houver aprovação registrada nesta conversa, **pare e pergunte** antes de qualquer atualização.

Sequência:

1. **`docs/PARAMETROS_VIGENTES.md`** — atualize apenas o que mudou: ACOS vigentes, lances, orçamentos, estado das campanhas, vigias (com condição e prazo), Radar ativo, negativações consolidadas, promoções. Acrescente uma linha no histórico de atualização.
2. **`ciclos/Ox-dd-mm.md`** — crie o registro do ciclo: janela analisada, relatórios usados, decisões aprovadas, decisões recusadas pelo LEO, o que ficou pendente.
3. **`docs/CONTEXTO_OPERACIONAL.md`** — atualize o estado do ciclo, casos abertos, cobertura das fontes, data do próximo monitoramento e da próxima Ox, e a data de última atualização.
4. **`docs/MEMORIA.md`** — anexe (nunca reescreva) qualquer armadilha ou aprendizado novo do ciclo.
5. **Registro de Alterações** em `dados/` — se a planilha estiver presente, registre as alterações aprovadas. **Nunca sobrescreva o original**: gere cópia versionada e avise o LEO.
6. **Commit**:
   ```
   git add -A
   git commit -m "[Ox dd/mm] resumo do ciclo"
   git push -u origin claude/winnet-amazon-setup-ub0w7p
   ```

O histórico do git é o registro oficial do ciclo — o commit substitui o papel que o histórico de conversas cumpria no Project.

Confirme ao final o que foi gravado e o que ficou pendente.
