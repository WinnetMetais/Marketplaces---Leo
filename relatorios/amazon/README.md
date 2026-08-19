# relatorios/amazon/

Exports de relatórios Amazon, organizados por janela.

## Convenção de nome

```
AAAA-MM-DD_AAAA-MM-DD__<tipo>.csv|xlsx
```

Exemplo: `2026-07-20_2026-08-18__termos-de-pesquisa.xlsx`

O nome é conveniência. **O período real vem sempre do conteúdo do arquivo**, nunca do nome — o `auditor-dados-amazon` valida isso antes de qualquer análise.

## Insumos do método (11)

| # | Relatório | Janela típica |
|---|---|---|
| 1 | Termos de Pesquisa | 30 dias |
| 2 | Segmentação | 30 dias |
| 3 | Produtos Anunciados | 30 dias |
| 4 | Posicionamento (Placement) | 30 dias |
| 5 | Campanhas | 30 dias |
| 6 | Parcela de Impressões | 30 dias |
| 7 | Export do Gerenciador (com coluna Estado) | 7 dias e/ou Era |
| 8 | Relatório de Negócios / vendas totais | mesmo período do cruzamento |
| 9 | Planilha Mestra vigente | `dados/` |
| 10 | Playbook Oficial | `docs/` |
| 11 | Parâmetros Vigentes | `docs/` |

Nem todos são necessários para produzir alguma análise. O que faltar é declarado no bloco **I. Dados que faltam**.

## Nunca

- Somar vendas atribuídas de relatórios Ads diferentes.
- Cruzar 7 dias de um relatório com 30 dias de outro como se fossem a mesma janela.
