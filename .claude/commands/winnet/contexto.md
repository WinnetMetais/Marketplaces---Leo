---
description: Mostra o estado operacional atual — dados disponíveis, ciclo, pendências e capacidades ativas
---

Levante e apresente o estado atual deste repositório para o LEO:

1. **Ciclo e casos** — leia `docs/CONTEXTO_OPERACIONAL.md`: último ciclo, próximo ciclo, casos abertos, cobertura do `Livro_Vendas`.
2. **Inventário de dados** — liste `dados/`, `relatorios/amazon/` e `ciclos/` com contagem e nomes reais dos arquivos.
3. **Prontidão para Ox** — confronte o inventário com os 11 insumos do método e diga o que está **PRESENTE** e **AUSENTE**. Separe:
   - **BLOQUEADOR** para uma ação específica
   - **IMPORTANTE, mas não bloqueador geral**
4. **Parâmetros** — aponte quantos campos de `docs/PARAMETROS_VIGENTES.md` ainda estão `PENDENTE`.
5. **Capacidades ativas** — skills carregadas, subagentes disponíveis, comandos, MCP e status do claude-mem.
6. **Último ciclo no git** — `git log --oneline --grep='^\[O' -5`.

Termine com uma recomendação objetiva do que fazer a seguir, em uma frase.
