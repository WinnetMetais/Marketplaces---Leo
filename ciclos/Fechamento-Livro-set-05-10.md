# Fechamento do Livro_Vendas — setembro/2026 (05/10/2026)

**Modo:** fechamento mensal (ritual da 1ª segunda) — antecede o monitoramento semanal de 05/10.
**Decisões do LEO (05/10):** devoluções **ficam fora do Livro** (só no Registro_Vendas, STATUS = DEVOLUÇÃO) · Mestra com **versão preservada** (v4.3.4 intocada; lançamento em Excel gera nova versão).
**Fontes:** `dados/Planilha_Mestra_Winnet_v4_3_4.xlsx` (Registro_Vendas, versão de 01/10) · `relatorios/amazon/fechamento-livro-set/` — Produtos Anunciados, Termos de Pesquisa, Campanhas (01–30/09) e Business Report por ASIN (01–30/09) · exports semanais já arquivados (26/08–07/09, 07–14/09, 14–21/09, 22–28/09).

## B. Qualidade dos dados

- Os 4 relatórios cobrem exatamente 01–30/09 (LEO). Relatórios Ads são agregados de 30 dias, sem coluna de data; a data da venda vem do Registro_Vendas e a ligação é por SKU + valor + intervalo de atividade do termo.
- **Business Report × Registro_Vendas: bijeção perfeita.** 13 ASINs com unidades, 33 un nos dois; BR R$ 8.068,17 vs Registro R$ 8.019,23 — diferença **R$ 48,94 = exatamente as promoções de quantidade** (PXM 24/09 −29,00; L2025-T 20/09 −19,94), que o BR registra a preço de tabela (regra da MEMÓRIA 28/09). Nenhuma venda faltando de um lado ou do outro.
- **Campanhas × Produtos Anunciados × Termos:** 12 compras / 16 un / R$ 4.674,90 nos três (Geral 8c/10u/2.772,41 · PI P3070 2c/1.232,36 · PI PXM 1c/3u/519,03 · auto PXP 1c/151,10). Gasto do mês **R$ 411,88**.
- Limitação: duas vendas de L1618-T a R$ 110,20 (24 e 26/09) para uma atribuição Ads (intervalo do termo 02–27/09) — o relatório não distingue; o total do mês não muda, só a data da linha Ads.
- Limitação: PI P3070 tem 2 compras no mês para 3 vendas (03, 15, 30/09). A de 15/09 é certa (export 14–21/09 e alvo próprio). Entre 03/09 e 30/09, os exports de 08/09 e 14/09 não mostraram venda na PI → a 2ª é lida como **30/09** (alvo B0CTMZHJFJ). Confirmar no export de 29/09–05/10.

## Atribuição (21 vendas válidas)

| Origem | Vendas | Un | R$ | Campanhas |
|---|---:|---:|---:|---|
| **Ads** | 12 | 18 | **4.645,90** | Geral 8 (PG2460, L2470-B via L2460-B, L2025-T ×2, L1618-T, PXM ×3, L1623-T, P4080) · PI P3070 2 · PI PXM 1 (3 un) · auto PXP 1 |
| **Orgânico** | 9 | 11 | **2.854,40** | P3070 03/09 · L1618-T 05 e 14/09 · PXP ×2 08/09 · L2025-T ×3 20/09 · PXM ×2 22/09 · EGC · L1618-T 26/09 · L2030-B |
| **Total Livro** | 21 | 29 | **7.500,30** | **38,1% orgânico** (agosto: 68,4%) |
| Fora (devoluções) | 3 | 4 | 518,93 | L2030-T 01/09 · L1618-T 02/09 · L1618-B ×2 13/09 — nenhuma atribuída a Ads |

Ads reportado R$ 4.674,90 vs receita real das mesmas vendas R$ 4.645,90: diferença R$ 29,00 = promo de quantidade do pedido de 3 PXM (24/09). Linha a linha em `dados/PROPOSTA_Livro_setembro.csv`; coluna Origem das 24 linhas do Registro_Vendas em `dados/PROPOSTA_Origem_Registro_Vendas_set.csv`.

## C. Ads × vendas totais — setembro

| Métrica | Valor |
|---|---:|
| Gasto Ads | R$ 411,88 (41% do teto de R$ 1.000) |
| Vendas atribuídas (Ads) | R$ 4.674,90 · 12 compras · 16 un |
| **ACOS do mês** | **8,8%** (Objetivo 9%) |
| Receita total válida (Livro) | R$ 7.500,30 |
| **TACOS** | **5,5%** |
| Parcela Ads da receita | **61,9%** (agosto: 31,6%) |

Leitura: a inversão da parcela (orgânico 68% → 38%) não é queda do orgânico em valor absoluto só — agosto teve R$ 9.524 orgânicos puxados por Q4070-A ×4 (4.212,68) e resgates de promo; setembro orgânico ficou em R$ 2.854. **Ads cresceu em valor** (4.391 → 4.646) com gasto menor que o teto e ACOS 8,8%. Geral DBA respondeu por 8 das 12 vendas Ads (R$ 2.772, custo R$ 235, ACOS 8,5%); PI P3070 R$ 1.232 com custo R$ 105 (8,6%). Não é prova de causalidade — é a foto do mês. Os eventos do mês (9.9 em 07–13/09; desconto no preço 21–27/09) estão dentro.

## Pendências do fechamento

1. LEO lança as 21 linhas no `Livro_Vendas` (Excel) + linha "Setembro" no RESUMO MENSAL + atualiza TOTAL; preenche a coluna **Origem** (R) das 24 linhas do Registro_Vendas; salva como **nova versão** (v4.3.5), v4.3.4 preservada.
2. Code confere célula a célula, valida (7 validações) e sobe; atualiza GUIA/CLAUDE.md para a versão nova; §2 dos Parâmetros com os números do mês.
3. Export de 29/09–05/10: confirmar a venda da PI P3070 de 30/09 (se a PI mostrar 1 compra na semana, fecha a leitura; se 0, a Ads é a de 03/09 e troca a origem das duas linhas — total não muda).
