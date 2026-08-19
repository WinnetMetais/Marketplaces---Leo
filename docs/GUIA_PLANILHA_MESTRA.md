# Guia — Planilha Mestra Amazon Winnet

**Fonte oficial de dados FINANCEIROS e por SKU.** Versão vigente: **v4.3.2**.

> ⚠️ **Status:** o texto integral do Guia ainda **não** foi migrado do Project original, e o
> arquivo `dados/Planilha_Mestra_Winnet_v4.3.2.xlsx` ainda **não** está no repositório.
>
> Enquanto a Mestra não estiver acessível, **não concluir que a margem comporta** uma ação.
> Usar a linguagem obrigatória: *"A performance de Ads sugere possibilidade de escala, mas a
> decisão financeira fica pendente de validação de margem na Planilha Mestra."*

---

## Para que a Mestra é usada

| Campo | Uso na análise |
|---|---|
| SKU | Chave de ligação com relatórios Ads (Produtos Anunciados) |
| Preço | Hipótese de conversão e competitividade |
| Custo | Base da margem |
| Margem | Autoriza (ou não) escala; base do break-even ACOS |
| Tarifa | Componente da margem; distinguir **estimada** de **auditada** |
| Frete | Componente da margem |
| Classe logística | Impacto em tarifa e prazo |
| Rentabilidade | Resultado consolidado por SKU |

---

## Abas de referência

| Aba | Natureza | Regra |
|---|---|---|
| `Registro_Vendas` | **Vendas reais** | Valores oficiais da transação realizada. Não rebaixar a "provisório" sem indicação explícita na linha. É histórico registrado — **não** chamar de "vitalício" sem confirmação de cobertura total. |
| `Livro_Vendas` | **Histórico oficial mensal** | Fechamento em **07/09**. Entre atualizações fica 1–2 meses defasado. Sempre checar a última data coberta antes de comparar com Ads. |

**Hierarquia temporal para fatos de venda:**
`Registro_Vendas` → `Livro_Vendas` → relatórios Ads → Painel de Vendas.

**Regra crítica:** ausência de registro no `Livro_Vendas` **não** é evidência de ausência de
venda em período posterior à última atualização. Usar:
*"O Livro_Vendas não cobre integralmente este período; não é possível confirmar por ele."*

---

## Regras financeiras de leitura (Testes Reais 5 e 6)

- **Margem financeira ≠ competitividade de preço.** Margem boa não prova preço competitivo.
- **Histórico da Mestra ≠ vitalício** de campanha. São escopos diferentes.
- **Margem pré-Ads** define o **break-even ACOS** — uma fronteira econômica aproximada, não um teto operacional nem uma meta.
- **Capacidade unitária ≠ rentabilidade do período.** Margem unitária boa com volume baixo não é resultado.
- **`MARGEM SUPORTA ESCALA` não significa `ESCALAR`.** É condição necessária, não suficiente.
- **Tarifa estimada ≠ tarifa auditada.** Sinalizar qual está sendo usada.
- **Halo / pedido multi-SKU** não invalida a atribuição Ads da janela, mas contextualiza o resultado.
- **Eficiência de Ads ≠ lucratividade.** ACOS dentro da meta não prova lucro no período.
- Vendas do histórico **nunca** se somam às vendas Ads da janela como métrica adicional; servem de contexto/contrapeso e **não** alteram o ACOS da janela analisada.

---

## Notas técnicas de leitura (openpyxl / pandas)

- Ler com `pandas`/`openpyxl` — não estimar valores a olho.
- Validar números BR: vírgula decimal, ponto de milhar, moeda, percentual.
- `openpyxl` **não recalcula fórmulas**. `data_only=True` devolve o último valor cacheado pelo
  Excel; se a planilha não foi aberta/salva pelo Excel após a edição, o cache pode estar vazio ou velho.
- Gravar com `openpyxl` **apaga o valor cacheado** de fórmulas preexistentes.
  **Nunca sobrescrever a Mestra original** — sempre gerar cópia versionada.
- Preservar abas, formatação e ordem das colunas.

---

## Pendências

- [ ] Carregar `dados/Planilha_Mestra_Winnet_v4.3.2.xlsx`
- [ ] Substituir este guia pelo texto integral do **GUIA — PLANILHA MESTRA AMAZON WINNET**
- [ ] Mapear nomes exatos das colunas por aba após o upload
