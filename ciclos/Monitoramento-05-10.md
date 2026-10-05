# Monitoramento semanal — 05/10/2026 (29/09–05/10)

**Modo A** (7 dias). Primeiro monitoramento da Era O6→O7 depois do fechamento do Livro de setembro (`ciclos/Fechamento-Livro-set-05-10.md`, Mestra v4.3.5). Sem diagnóstico profundo: a O7 de 13/10 lê a Era inteira em dois blocos (pré-evento 23/09–04/10 · evento 05–11/10).

## A. Resumo executivo

- **Semana de preço limpo fechou forte:** 6 compras / 9 un / **R$ 3.573,64** atribuídos a Ads com **R$ 110,44** de custo → **ACOS 3,1%**, ROAS 32. Geral DBA 4 compras (P4080 — 1ª venda do SKU —, P3060 ×2, L1618-B, L1623-T), PI P3070 1 (alvo B0CTMZHJFJ, 30/09), PI PXM 1 (3 un, 01/10). n pequeno e semana atípica (pré-evento): **não é base para escalar nada**.
- **Prime Day começou com pendência:** às 15h de 05/10 a Melhor Oferta do **PXP** aparece "Apresenta problemas — o preço promocional não corresponde ao preço atual" (R$ 151,10 vs referência R$ 167,89, 419 un comprometidas); a Melhor Oferta do **P3070** e o desconto **PRECOPRIMEALTERNATIVO** (12 ASINs) aparecem **"Em processamento"**, não "Ativo". Exibição na busca **não conferida** (print pedido, não enviado).
- Tráfego do catálogo caiu 20% na semana (BR: 161 sessões vs 202) com o dobro de receita (R$ 3.449,71 vs 1.861,82) — ticket alto (P4080, P3060 ×2).
- Nenhuma ação de console nesta semana. Registro: EC-020 em maturação; nada a lançar.

## B. Qualidade dos dados

| Fonte | Período | Observação |
|---|---|---|
| Export do Gerenciador (`gerenciador_semana_29-09_05-10.csv`) | 29/09–05/10 | 80 campanhas (10 ATIVADO / 70 PAUSADO). Sem impressões nem valor de vendas por campanha — vendas reconstruídas por custo × ROAS; impressões só no print do console (39.236) |
| Print do console | 29/09–05/10 | 39.236 impressões · 125 cliques · R$ 3.573,64 — bate com a soma do export (125 cli; 2.346,84 + 610,62 + 616,18 = 3.573,64) |
| Business Report por ASIN | 29/09–04/10 | 161 sessões · 8 un · R$ 3.449,71. Lag D+2: 04/10 ainda incompleto (L2030 de 04/10 não aparece) |
| Prints de promoções | 05/10 15h | status dos 3 itens do Prime Day + detalhe do problema do PXP |
| Mestra v4.3.5 | até 04/10 | vendas da semana: P4080 30/09 · P3070 30/09 · P3060 ×2 01/10 · PXM ×3 01/10 · L1618-B 03/10 · L2030 04/10 (+ L1623-T registrado em 28/09) |

**Divergência a registrar:** a Geral atribui 4 compras = R$ 2.346,84, que só fecha com **P4080 1.070,17 + P3060 1.022,84 + L1618-B 129,90 + L1623-T 123,93**. O L1623-T está no Registro_Vendas em **28/09** (fora da janela) — ou o pedido foi em 29/09 (Registro com data de um dia antes) ou o clique foi 29/09 e a venda caiu na janela por atribuição. Não afeta o Livro (o mesmo L1623-T já está atribuído em setembro); afeta só a leitura semanal. Conferir a data do pedido no Seller Central. O L2030 (04/10) não aparece em Ads → orgânico.

## C. Ads × vendas totais (semana)

| | Valor |
|---|---:|
| Vendas atribuídas Ads | R$ 3.573,64 (6 compras, 9 un) |
| Vendas da semana no Registro (29/09–04/10, receita real) | R$ 3.538,40 (6 pedidos, 9 un) + L2030 orgânico incluído |
| BR 29/09–04/10 | R$ 3.449,71 (8 un; sem o L2030 de 04/10 por lag) |
| Custo Ads | R$ 110,44 · ACOS 3,1% · TACOS ≈ 3,1% |

Praticamente toda a venda da semana tem clique de Ads antes (à exceção do L2030). Leitura: semana de **conversão de tráfego acumulado** a preço cheio (P4080 e P3060 não converteram a −10% em 21–27/09 e venderam cheio agora) — correlação temporal, não prova de causa (CLAUDE.md §7).

## D. Diagnóstico por campanha

| Campanha | Cli | Custo | Compras | Vendas | Leitura | Decisão | Conf. |
|---|---:|---:|---:|---:|---|---|---|
| Geral DBA-o59/09 | 87 | 58,26 | 4 | 2.346,84 | ACOS 2,5%; 4 SKUs diferentes; orçamento R$ 90 longe do teto | MANTER | ALTA |
| PI P3070-o228/07 | 28 | 40,65 | 1 | 616,18 | converteu em alvo asin-expanded (B0CTMZHJFJ); 28 cli/semana é o maior volume da conta fora a Geral; gatilho O6-004 lido na O7 | MANTER · VIGIA | ALTA |
| PI PXM-o311/08 | 2 | 1,29 | 1 | 610,62 | converte no alvo PXP com 2 cliques | MANTER | ALTA |
| auto PXP-o311/08 | 4 | 4,51 | 0 | 0 | sem venda na semana; vitalício positivo | MANTER | MÉDIA |
| PI L2030-B-o311/08 | 1 | 0,97 | 0 | 0 | entrega mínima; L2030-B vendeu orgânico em 28/09 | MANTER | MÉDIA |
| Lixeiras banheiro (manual) | 3 | 4,76 | 0 | 0 | TOS 59%; sem venda | VIGIA | MÉDIA |
| Cinzeiros · Extintor Exato · L3070-B · Bituqueiras | 0 | 0 | 0 | 0 | sem clique na semana (impressões só no console) | MANTER | MÉDIA |

## E. SKU (semana)

| SKU | Venda | Origem | Nota |
|---|---:|---|---|
| P4080 | 1 · 1.070,17 | Geral | **1ª venda**; 8 sessões/6 dias |
| P3060 | 2 · 1.022,84 | Geral | 7 sessões; em PRECOPRIMEALTERNATIVO desde 05/10 |
| PXM | 3 · 610,62 | PI PXM | 11 sessões; 23 un no ano |
| P3070 | 1 · 616,18 | PI P3070 | 15 sessões; Melhor Oferta 15% "Em processamento" |
| L1618-B | 1 · 129,90 | Geral | 3 sessões; 3ª venda (2 anteriores devolvidas) |
| L1623-T | 1 · 123,93 | Geral | ver divergência de data em B |
| L2030 | 1 · 119,22 | Orgânico | 04/10; ausente do BR por lag |
| PXP | 0 | — | 10 sessões, 0 un; Melhor Oferta com problema |
| L1618-T | 0 | — | 13 sessões, 0 un (vendeu 5 em setembro) |

## F. Termos e alvos
Sem relatório de termos nesta semana (ritual: só na O7). Alvo B0CTMZHJFJ da PI P3070 converteu — 2ª venda em alvo expandido no vitalício.

## G. Alterações sugeridas
1. **Nenhuma alteração de Ads.** Semana atípica e véspera/início de evento — tudo vai para a O7 (13/10). Confiança ALTA.
2. **Promoções (LEO, hoje):** (a) abrir o PXP em Gerenciar Estoque e conferir "Seu preço" = R$ 167,89; se estiver diferente, corrigir; se igual, esperar as 2,5 h da mensagem e reconferir a Melhor Oferta; se persistir, editar a oferta e salvar de novo com R$ 151,10. (b) Conferir na busca/página se P3070 e um dos 12 (P4080) mostram preço riscado/selo; mandar print. Se até a noite seguir "Em processamento" sem exibição, é incidente do evento — registrar e abrir caso com a Amazon. Confiança MÉDIA (sem print da busca).

## H. Não fazer agora
- Não escalar Geral nem PI P3070 por ACOS de 3,1% — n = 6, semana sem evento comparável.
- Não mexer em lance ou orçamento durante o Prime Day (05–11/10): contamina a leitura do bloco do evento na O7.
- Não recriar o desconto vinculado ao evento (frete grátis exigido, regra fechada).

## I. Dados que faltam
- Print da busca com o desconto/selo (exibição do PRECOPRIMEALTERNATIVO e das Melhores Ofertas).
- Data do pedido do L1623-T (28 ou 29/09).
- Relatório de termos e alvos da Era (para a O7): Segmentação 30d, Termos 30d, Produtos Anunciados 30d, vitalício por alvo das PIs.
- Controle Semanal: linha de 05/10 proposta em `dados/PROPOSTA_linha_Controle_Semanal_05-10.csv` (ROAS 32,36 · ACOS 3,09% · taxa de compra 4,80% · CPC 0,88 · CTR 0,32%).

**Próximos passos:** 12/10 (feriado) — só linha do Controle, sem diagnóstico. **O7 em 13/10**: Era 23/09–12/10 em dois blocos; gatilhos O6-004/008/010/013/019; corte de série 23–27/09; leitura do Prime Day (14 SKUs) e do desconto comum; vereditos EC-020 e O6-xxx em maturação.

**Adendo 05/10 (print Gerenciar Estoque, PXP):** listing Ativo, **preço R$ 167,89**, mínimo e máximo em branco, FBM "WN - Pequenos", 419 un, Oferta em destaque R$ 167,89 + R$ 12,90 de frete. O preço do anúncio está certo — o problema da Melhor Oferta não é o preço de tabela. Hipótese: a Amazon recalculou o **preço de referência** do PXP depois do desconto de 5% de 21–27/09 (R$ 159,50) e a oferta criada em 22/09 com referência 167,89 deixou de bater. Caminho: (1) "Ver preços de referência" no anúncio e print; (2) passado o prazo de 2,5 h, reabrir a oferta em Editar e salvar de novo com R$ 151,10; (3) se persistir, caso com a Amazon. Nada a mudar no preço do anúncio.

**Adendo 05/10 — exibição do Prime Day CONFIRMADA (prints das páginas):**
- **P3070 (Melhor Oferta 15%):** página mostra **"De: R$ 616,18" riscado**, "Preço exclusivo Prime", total parcelado **R$ 523,75** (= preço da oferta) e R$ 497,56 "5% off à vista no Pix ou NuPay" (desconto de pagamento da Amazon, não é regra da Winnet — conferir no 1º pedido se o repasse é sobre 523,75). Promoção de quantidade exibida junto (5% em 3+, 8% em 5+): empilhamento conhecido. **No ar**, apesar de o painel mostrar "Em processamento".
- **P4080 (PRECOPRIMEALTERNATIVO 10%):** página mostra **"De: R$ 1.070,17" riscado**, total parcelado **R$ 963,15** (= preço fixo do desconto), R$ 914,99 à vista no Pix, sem selo Prime (público Todos os clientes). **No ar.** Promo de quantidade 5% em 3+ exibida junto.
- **PXP:** "Ver preços de referência" mostra Oferta em destaque e Menor preço = R$ 167,89 + R$ 12,90; preço competitivo "--". A referência que essa tela expõe está íntegra — a hipótese de referência recalculada **não se confirma por aqui** (a tela não mostra o "preço De"). Causa do "preço promocional ≠ preço atual" segue desconhecida → passo 2 (editar e salvar a oferta com R$ 151,10) e, se persistir, caso com a Amazon.

**Regra nova (MEMÓRIA):** o status "Em processamento" no painel de promoções **não** significa fora do ar — a página do produto é a fonte da exibição. O painel de ofertas pode ficar em processamento com a oferta já visível.

**Adendo 05/10 — tela de edição da Melhor Oferta do PXP:** Seu preço 167,89 · referência 167,89 · preço da oferta **R$ 151,10 = "Máx.: R$ 151,10 (10%)"** · desconto 16,79 (mín. 16,79) · 419 un reservadas (travado). Todos os campos coerentes; a oferta está exatamente no teto permitido (mínimo de 10%, confirmado em tela). Nada a alterar — salvar/enviar para reprocessar a validação; se o status não limpar, caso com a Amazon.

**Controle Semanal atualizado pelo LEO (05/10):** linha 15 com 39.236 · 125 · 110,44 · 3.573,64 · 6 · 9 · VIGIA; fórmulas I:M intactas (ROAS 32,36 · ACOS 3,09% · taxa 4,80% · CPC 0,88 · CTR 0,32%); validação 1. A nota (coluna O) entrou cortada em 300 caracteres — versão curta e atualizada em `dados/PROPOSTA_Controle_O15_nota_curta.txt`, sem urgência.
