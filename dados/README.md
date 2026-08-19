# dados/

Planilhas vigentes da operação. **Repositório privado** — estes arquivos contêm custo e margem.

## Arquivos esperados

| Arquivo | Papel | Status |
|---|---|---|
| `Planilha_Mestra_Winnet_v4.3.2.xlsx` | Fonte oficial de SKU, preço, custo, margem, tarifa, frete, classe logística, rentabilidade. Abas `Registro_Vendas` e `Livro_Vendas`. | ⬜ pendente |
| `Controle_Semanal.xlsx` | Acompanhamento do monitoramento semanal | ⬜ pendente |
| `Registro_de_Alteracoes.xlsx` | Rastreabilidade das alterações por ciclo Ox | ⬜ pendente |

## Regras

- **Nunca sobrescrever o original.** `openpyxl` apaga o valor cacheado de fórmulas preexistentes ao gravar. Toda edição gera cópia versionada (`_v4.3.3`, `_2026-08-19`, etc.).
- **Sempre versionar a Mestra por número.** Atualizar `docs/CONTEXTO_OPERACIONAL.md` quando a versão mudar.
- Ler com `pandas`/`openpyxl`, validando números BR (vírgula decimal, ponto de milhar).
- `data_only=True` devolve o cache do Excel — pode estar vazio se o arquivo nunca foi aberto/salvo após edição.
