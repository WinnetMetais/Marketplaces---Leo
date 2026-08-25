# dados/

Planilhas vigentes da operação. **Repositório privado** — estes arquivos contêm custo e margem.

## Arquivos esperados

| Arquivo | Papel | Status |
|---|---|---|
| `Planilha_Mestra_Winnet_v4_3_2.xlsx` | Fonte oficial de SKU, preço, custo, margem, tarifa, frete, classe logística, rentabilidade. 9 abas, incluindo `Simulador`, `Registro_Vendas` e `Livro_Vendas`. | ✅ carregada |
| `Controle_Semanal_Amazon_Ads_Winnet.xlsx` | Acompanhamento do monitoramento semanal. Campo Status usa só categorias oficiais. | ✅ carregada |
| `Registro_Alteracoes_Amazon_Ads_Winnet.xlsx` | **Fonte oficial do que virou alteração real.** Uma recomendação só é alteração quando confirmada aqui. | ✅ carregada |

## Regras

- **Nunca sobrescrever o original.** `openpyxl` apaga o valor cacheado de fórmulas preexistentes ao gravar. Toda edição gera cópia versionada (`_v4.3.3`, `_2026-08-19`, etc.).
- **Sempre versionar a Mestra por número.** Atualizar `docs/CONTEXTO_OPERACIONAL.md` quando a versão mudar.
- Ler com `pandas`/`openpyxl`, validando números BR (vírgula decimal, ponto de milhar).
- `data_only=True` devolve o cache do Excel — pode estar vazio se o arquivo nunca foi aberto/salvo após edição.
- **`openpyxl` remove dropdowns e validações de dados** — revalidar após toda edição.
- `Registro_Vendas`: header na linha 6, dados a partir da linha 7. **Nunca usar "Inserir linha"** — usar as linhas vazias existentes.
- Grafias de SKU seguem exatamente a base vigente (ex.: `L2450--CZ`, `SP-PP`, `SP-FF`).
