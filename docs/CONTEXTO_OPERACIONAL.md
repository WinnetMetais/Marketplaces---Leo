# CONTEXTO OPERACIONAL — SNAPSHOT

**Data do snapshot:** 25/08/2026 (pós-O4), com atualizações operacionais até 22/09/2026 (O6 aprovada)
**Natureza:** DOCUMENTO VIVO. Representa o estado operacional no momento do snapshot. Atualizar sempre que o estado mudar; nunca tratar como regra permanente.

---

## Estado atual

- **Ciclo de Ads:** **O6 CONCLUÍDA COMO ANÁLISE em 22/09/2026 — G1 a G13 aprovados pelo LEO, execução no console PENDENTE.** 20 linhas no Registro (O6-001 a O6-020, total 72), 4 ações no console + 7 inscrições de oferta: pausar auto SP-PP e auto EGC, pausar o alvo `B09YDLC69D` na PI P3070, loose-match da Geral 0,54 → 0,45, ofertas do Prime Day (7 SKUs, PXP como exceção ao piso). Canônico analisou, Code auditou sem correção de número. Detalhe na seção "O6" abaixo; documentos em `ciclos/O6-22-09_*`. **O7: 13/10** (decisão do LEO). — Anterior: **O5 CONCLUÍDA E EXECUTADA — análise em 08/09, execução em 09/09/2026.** 8 ações no console, todas conferidas contra export e prints. Registro do ciclo em `ciclos/O5-08-09.md`. ~~O5 concluída como ANÁLISE em 08/09/2026~~ — 17 linhas (O5-001 a O5-017) aprovadas item a item pelo LEO, **execução ainda pendente**. Diagnóstico, auditoria e pacote em `ciclos/O5-08-09_*`. A O4 (25/08) teve suas 19 ações avaliadas: 21 das 23 entradas do Registro saem de EM MATURAÇÃO.
- **Estado da conta:** **12 campanhas ativas** (pós-O5; eram 16, e o snapshot de 25/08 dizia 15 por erro de contagem). ~~16 campanhas ativas~~ — o snapshot anterior dizia 15, era erro de contagem (os 16 nomes do export coincidem com o mapa vivo). A O5 propõe pausar 4, o que levaria a **12** após a execução.
- **Geral Automática DBA-o3:** principal vendedora (4 das 6 compras da Era). **O lance padrão de R$ 0,48 é INERTE** — as 4 segmentações têm lance próprio (close 0,45 · complements 0,45 · loose 0,54 · substitutes 0,54) e nunca acompanharam o campo padrão. A escala real da Geral é por segmentação.
- **Teto mensal de Ads:** **R$ 1.000/mês** (Dianna, 25/08). **Setembro 01–14: R$ 158,33** (console) = **15,8% do teto consumido**. Projeção R$ 339/mês (**34%**). ⚠️ O ritmo **caiu 38% após a O5**: R$ 13,51/dia em 01–08 contra **R$ 8,38/dia em 09–14**, efeito das 4 pausas. **ACOS de setembro: 9,93%** — quase no Objetivo de 9%.
- **SP-01 — política de fumo:** **caso encerrado** (contestação negada em 2ª análise, 25/08). ⚠️ **São três camadas, e só uma está travada:** o **listing está ativo**; o **anúncio dentro da auto SP-01-o116/07 está suspenso por política** (por isso zero entrega desde 17/08, apesar de a requalificação do ASIN em 19–20/08 ter sido real); e o **mesmo SKU segue anunciado normalmente pela Manual Bituqueiras Space** (14 impressões, 20/08–04/09). A O5 propõe pausar a auto — pausar **não** tira o SP-01 do ar em Ads. **O export do Gerenciador não mostra suspensão no nível do anúncio; só o console mostra.**
- **SP-PP:** anomalia resolvida na causa — segmentação `substitutes` pausada e negativas aplicadas (12 exatas + 6 frases). CTR a reavaliar pós-limpeza na O5.
- **Planilha Mestra:** versão canônica **v4.3.4** (`dados/Planilha_Mestra_Winnet_v4_3_4.xlsx`) — 4 vendas de setembro lançadas e **validações de dados restauradas**. ⚠️ Pendente de confirmação visual do LEO no Excel.
- **Livro_Vendas:** fechamento de agosto/2026 movido de 07/09 para **08/09/2026** — exceção documentada por feriado da Independência (07/09, segunda), **não** mudança de protocolo. **Ordem no dia: Livro_Vendas primeiro, O5 depois.** Atribuição de origem (Ads/Orgânico) exige cruzamento com relatórios de publicidade no fechamento; lançamentos não classificáveis devem ser sinalizados para decisão da Wintech — nunca inferidos.
- **Imagens de produto:** trabalho contínuo em múltiplos SKUs com geradores de IA (GPT, Gemini) e edição manual (Photopea, Canva), prompts em português.

## Evento 9.9 — ofertas no ar (02/09)

- **16 ofertas programadas para 07–13/09** (Semana de Beleza): 5 Relâmpago + 11 Melhor Oferta, taxa zero, descontos 10–15% validados por margem. Registro em `ciclos/EC-02-09.md` (EC-003/EC-004) e plano em `docs/PLANO_9-9.md`.
- Conta inscrita no **Vem de Amazon** (contato: LEO). Cada oferta com ≥1 venda até 30/09 pontua.
- Leitura pós-evento em 14/09; **não calibrar réguas no ROAS do evento** (atribuição a preço de tabela).

## Marca e catálogo — snapshot 01/09/2026 (entre-ciclos, pré-O5)

**Nada desta seção foi executado no console — são decisões e diagnósticos.**

### Brand Registry — APROVADO ✅
- Marca **`WINNET METAIS`** aprovada (caso 21786840981), ativa e conectada à conta de vendas. **Alias único: `WINNET METAIS`** — não existe outra grafia válida.
- Função de vendas: **Representante da marca — ATIVO** (papel máximo).
- Benefícios liberados: Conteúdo A+, Lojas, Marcas patrocinadas, Avaliações de clientes, Produtos patrocinados, Exibição patrocinada, Brand Analytics, Denunciar violação, IP Accelerator, Project Zero, Unidade de crimes de falsificação.

### Bloqueio confirmado — ASIN genérico
- O atributo de marca de ASIN cadastrado como **"Genérico" não pode ser alterado** (suporte, caso 21821042531; consistente com a política de edição de página de detalhes: trocar marca exige **ASIN novo**, mesmo sem mudança material do produto).
- **Consequência:** A+, Avaliações de clientes, Brand Analytics e Sponsored Brands **não operam sobre o catálogo atual**. Hoje o Brand Registry entrega apenas **proteção de nome**. Único caminho: **recriar anúncios sob a marca**.

### Vine — indisponível
- Exige oferta **FBA**; a operação é envio próprio. O bloqueador transversal **"prova social zero" permanece aberto** e sem solução via Brand Registry. Alternativa a avaliar depois: botão "Solicitar avaliação" do Seller Central.

### Catálogo — diagnóstico (Relatório de Todas as Ofertas, 01/09)
- **Nenhum EAN existe**: as 114 linhas têm `product-id-type = 1` (ASIN) e `product-id` = próprio ASIN.
- **Sem variações pai/filho** — cada SKU é página isolada; 114 páginas competindo entre si sem seletor concentrando sessões.
- Categorias (PTD): `TRASH_CAN`, `MOUNT_BRACKET`, `CLOTHES_RACK`, `ASHTRAY`, `HOME`.
- Adesivo do produto traz **"Winnet Home & Pro"** — não bate com a marca registrada. Embalagem sem impressão de marca.

### Decisão — identificador de produto — ⚠️ REVERTIDA EM 14/09

⚠️ **ESTADO EM 14/09: os dois caminhos estão vivos, e a GS1 ficou mais curta.** A filiação à GS1 **não estava parada** como este documento afirmava — o portal mostra **Contrato Social ✅ · Faturamento Fiscal do Último Exercício 🔴 PENDENTE · RG/CNH ✅**, com análise declarada de 1–2 dias úteis. Falta **um documento**, que é da contabilidade e define a faixa de anuidade; a pendência é da Winnet, não da GS1. Enquanto isso, a **isenção depende de mudar a marcação do produto na produção, sem data**. Com EAN real o ASIN novo é criado **sem a revisão de imagem** que barrou a isenção. Ver `docs/CHECKLIST_GS1_EAN.md` (reativado).

**Vigente (decisão do LEO, 14/09):** **isenção de GTIN** na Amazon. Solicitada dentro do fluxo de cadastro de anúncio novo e ⚠️ **RECUSADA em 14/09**. **Motivo declarado: imagens fora dos requisitos.** ⚠️ **Causa raiz identificada no mesmo dia: existem TRÊS grafias diferentes** — produto que embarca `Winnet Home & Pro` (adesivo) · amostra fotografada `WIN NET METAIS` (gravada no inox) · Brand Registry `WINNET METAIS` *(grafia confirmada na tela em 14/09 — tudo junto)*. Nenhuma corresponde a outra, e a Amazon exige correspondência exata. **As fotos enviadas eram de uma amostra, não da unidade que embarca** — refazer fotos não resolve, e reenviar com a amostra é risco de integridade de marca com o INPI em oposição. **Achado positivo:** a amostra prova que a fábrica grava a marca permanentemente no inox, solução superior ao adesivo. **O cronograma da migração passa a depender da produção, não da Amazon.** Ver `docs/CHECKLIST_ISENCAO_GTIN.md`. A filiação à GS1 fica **suspensa** — `docs/CHECKLIST_GS1_EAN.md` está marcado como suspenso, não excluído.

~~**Decisão anterior (Wintech + Dianna, 01/09):** filiação à GS1 Brasil com emissão de EANs próprios; isenção de GTIN descartada. Motivo registrado à época: elimina a dependência do EAN da fábrica (código em nome de terceiros) e serve a todos os canais.~~

**O que fica em aberto com o caminho novo** — registro, não reabertura da decisão:
- **NF (campo `cEAN`)** e **código de barras no adesivo** continuam sem solução. A isenção não gera GTIN.
- **Mercado Livre e demais canais** seguem sem identificador próprio — a isenção vale só na Amazon.
- ⚠️ **A isenção é concedida por marca e está acoplada ao Brand Registry.** Com o **INPI 944049613 em oposição**, se a marca for negada e o Brand Registry cair, a isenção cai junto. Risco conhecido no momento da decisão.
- Custo: zero. A anuidade GS1 sai do projeto enquanto a filiação estiver suspensa. A reimpressão do adesivo com a grafia `WINNET METAIS` continua necessária.

**Checklist do caminho vigente:** `docs/CHECKLIST_ISENCAO_GTIN.md`

### Risco atravessado — INPI
- Processo **INPI 944049613 em período de oposição**. Se negar, a Amazon pode **revogar o Brand Registry** e derrubar A+, Store e Brand Analytics. **Manter o Jair Silva de Andrade ativo até a concessão.**

## Cupons ativos fora do pacote 9.9 (04/09)

- **EC-005 — P2025, cupom 12%** (decisão LEO). SKU fora do 9.9, sem conflito. Margem 12,8%; empilha com promo de quantidade (5+ → 19% de desconto, margem 7,2%).
- **EC-006 — EMB-05, EMB-05P e EMB-08, cupom 50%** (decisão **Dianna**): **liquidação deliberada abaixo do custo** para liberar espaço físico. Perda conhecida de **−R$ 53 a −R$ 61 por unidade**, **sem contagem de estoque** — o teto prático é o orçamento do cupom (até −R$ 71 no EMB-08 com promo de quantidade). ⚠️ **Vendas desses SKUs sairão com margem negativa por desenho — segregar de qualquer média de margem do catálogo.** Linha de base e reavaliação em 18/09 no `ciclos/EC-04-09.md`.

## Livro de Vendas fechado — Agosto/2026 (08/09, pré-O5)

**Planilha Mestra promovida a v4.3.3.** Diagnóstico read-only confirmou: mudanças materiais **apenas no `Livro_Vendas`** (17 pedidos de agosto lançados + resumo mensal). Simulador, Registro_Vendas e Novo_Produto mudaram só em precisão de ponto flutuante (maior diferença 1,7e-13) — **nenhum valor real alterado**. Ref_Frete, Classificação_Frete e Listas intactas. v4.3.2 preservada no repositório conforme a cadeia de versões.

### Receita por origem — os três meses

| Mês | Total | Ads | Orgânico | % Orgânico |
|---|---:|---:|---:|---:|
| Junho (08–30) | R$ 3.312,09 | R$ 2.346,75 | R$ 965,34 | 29,1% |
| Julho | R$ 4.856,63 | R$ 2.830,55 | R$ 2.026,08 | 41,7% |
| **Agosto** | **R$ 13.915,83** | R$ 4.391,50 | **R$ 9.524,33** | **68,4%** |
| **TOTAL** | **R$ 22.084,55** | R$ 9.568,80 | R$ 12.515,75 | 56,7% |

**Dois fatos que a O5 precisa absorver:**
1. **Agosto quase triplicou julho** (R$ 4.856 → R$ 13.915, +186%).
2. **A parcela orgânica cresce em share e em valor** — 29% → 42% → 68%. O Ads cresceu (R$ 2.830 → R$ 4.391) mas o orgânico cresceu muito mais. **Ler ACOS e ROAS de Ads sabendo que Ads responde por ~32% da receita de agosto**, não pela receita total.

**Notas metodológicas do fechamento (LEO, 08/09):** valores lançados **a preço de tabela** (convenção do painel) — 3 pedidos com promo 5% somam −R$ 341,24 contra a receita real, e o `Registro_Vendas` preserva a real. Atribuição cruzada com Produtos Anunciados (25/07–23/08 + 08/08–06/09) e sanidade fechada contra o Campaign export (**Geral: 9 compras = R$ 3.561,62, bijeção exata**). **Halo Q2430-A → Q3060-A confirmado** (fecha a pendência 4 do Contexto). Diferença histórica de ~R$ 168 até 06/08 permanece registrada como zona cinzenta do par PXP+PXM de 02/07.

## Validações de dados da Mestra — perda e reparo (08/09)

**Sintoma:** o LEO relatou que a Mestra estava **sem as listas suspensas**.

**Diagnóstico (contagem de `<x14:dataValidation>` no XML):** v4.3.2 nas três cópias enviadas (28/08, 31/08, 01/09) tinha **4**; o v4.3.3 do fechamento tem **0**. As 2 validações de formato legado (`Simulador!B7:B232` = Pequenos/Medios/Grandes e `Registro_Vendas!R6:R107` = Ads/Orgânico/Conferir) sobreviveram.

**Causa:** as 4 perdidas são **validações de lista com origem em outra aba**, que o Excel grava na extensão `x14` — exatamente o que o `openpyxl` remove ao salvar (ele emite o aviso *"Data Validation extension is not supported and will be removed"*). As validações de lista literal, gravadas no formato antigo, passam ilesas. O padrão observado — 4 perdidas, 2 mantidas — é a assinatura de um salvamento por `openpyxl` em algum ponto do fechamento do Livro. O arquivo chegou ao repositório já sem elas (md5 idêntico ao enviado pelo LEO).

**As 4 validações perdidas:**

| Aba | Células | Origem da lista |
|---|---|---|
| Simulador | `C7:C232` | `Ref_Frete!$A$2:$A$54` |
| Registro_Vendas | `B6:B105` (SKU) | `Listas!$A$2:$A$114` |
| Registro_Vendas | `D6:D105` (Região destino) | `Ref_Frete!$A$2:$A$54` |
| Novo_Produto | `I6:I25` | `Ref_Frete!$A$2:$A$54` |

**Reparo (v4.3.4):** o bloco `<extLst>` das três abas foi copiado do v4.3.2 e reinjetado no arquivo por manipulação direta do zip — **sem passar pelo `openpyxl`**, que destruiria as validações de novo. Conferência: mesmos 21 arquivos internos, apenas as 3 abas alteradas, zip íntegro, **zero células com valor ou fórmula diferente** do arquivo enviado pelo LEO, x14 de volta a 4.

**Regra que fica:** enquanto houver validação de lista com origem em outra aba, **a Mestra não pode ser salva por `openpyxl`** — nem para uma edição pequena. Fechamento de Livro e lançamento de vendas devem ser feitos no Excel. Se um script precisar gravar, o reparo do `extLst` tem de ser refeito depois.

## O5 — 08/09/2026 · concluída como análise, execução pendente

**Números da Era 26/08–07/09** (13 corridos, 8 úteis): gasto R$ 210,96 · atribuído R$ 1.102,15 · **ACOS 19,1%** · **TACOS 7,3%** · vendas totais R$ 2.897,92 em 11 pedidos, **bijeção exata** com o `Registro_Vendas` · **Ads = 38%** da receita, não atribuído 62%. Venderam: Geral (4), 6B (1 — primeira venda da manual, no piloto dinâmico), Extintor (1). O orgânico trouxe a **primeira venda do P3070 desde junho**.

**Seis achados:**
1. **A Geral inverteu o funil.** `substitutes` (lance 0,54) consome **39% do gasto** com **ACOS 81%** em 30d; `close-match` (0,45, o menor lance) é a mais eficiente (2,5% em 30d, 6,9% vitalício).
2. **A O4-015 foi inerte** — o lance padrão não é usado. Confirmado por evidência, não inferência.
3. **Três dos quatro radares da O4 não geraram amostra** e caíram no contrato de saída. A EGC foi a única em que a entrega destravou (361 → 2.391 impressões); ali o problema migrou de entrega para **CTR** (0,13%).
4. **Piloto dinâmico da 6B: positivo preliminar** (n=1 venda).
5. **Melhor Oferta parece ser atribuída ao preço da oferta** — inferência de 1 pedido, a confirmar em 14/09.
6. **Régua formal de alvo de PI aplicada, com resultado nulo** — nas 7 PIs, o alvo com mais cliques vitalícios tem 12, abaixo dos 15.

**As 17 linhas — 8 executadas em 09/09, 1 bloqueada (O5-013), 8 sem ação no console.** Conferência completa em `ciclos/O5-08-09.md`. O que foi decidido:: rebalancear os lances por segmentação da Geral (substitutes 0,54→0,45 · close 0,45→0,54) **sem tocar no orçamento** · pausar PI L2470-CZ, PI PG3070 e auto PXM-o2 (contrato de radar) e auto SP-01 (anúncio suspenso na campanha) · EGC em vigia por 1 Era com gatilho · L3070-B migra para lance dinâmico · SP-PP perde a `loose-match` e entra em vigia · PI P3070 congelada com gatilho · nova exata na 6B · Q2460-B fica no Nível 2 · escopo da migração de ASIN decide na O6.

**Auditoria do Claude Code:** diagnóstico aprovado com 3 correções e pacote aprovado com mais 3 — todas incorporadas na v2. As recontagens que fecharam ao centavo estão em `ciclos/O5-08-09_auditoria-code.md`.

**Ordem de execução recomendada:** as 4 pausas primeiro (reversíveis, não afetam nada) → O5-001 e O5-002 **juntos**, porque um mede o outro → O5-009 e O5-010 por último. **Tirar o export pós-execução** — é ele que fecha o ciclo no repositório.

## O6 — 22/09/2026 · aprovada (G1–G13), execução pendente

**Papéis:** chat canônico analisou e propôs; Claude Code auditou (`ciclos/O6-22-09_auditoria-code.md`) — todos os números conferidos, três ressalvas de leitura, nenhuma muda decisão. Diagnóstico em `ciclos/O6-22-09_diagnostico-chat-canonico.md`; base em `ciclos/O6-22-09_base-auditada-code.md`; 11 relatórios em `relatorios/amazon/o6-22-09/`.

**Números da Era 10–21/09** (12 corridos, 9 úteis): gasto R$ 179,20 · 206 cliques · 4 compras · R$ 1.666,46 · **ACOS 10,75%** · BR 10–20/09 R$ 2.573,86 em 8 pedidos / 13 un · **Ads 64,7%** · **TACOS 6,96%** · bijeção BR × Mestra fechada (diferença R$ 19,94 = desconto de quantidade do pedido de 20/09; o BR registra a preço de tabela). Setembro até 21/09: R$ 287,66 = 28,8% do teto.

**Achados:** (1) a PI P3070 converteu **no alvo próprio** (`asin-expanded="B0H63FKGPJ"`, auto-segmentação) — a leitura do LEO em 15/09 estava certa; a PI dobrou a entrega e levou 39,7% do gasto com ≥50 cliques em terceiros sem venda. (2) `B09YDLC69D` é o **primeiro alvo da conta a cruzar a régua** (16 cli vit / 0). (3) Na Geral, `loose-match` leva 60% do gasto da Era a ACOS 34% (30d: 61%); O5-001/002 foram positivas (substitutes 39% → 12% do gasto; close com ACOS 5,2%). (4) Gatilhos de EGC e SP-PP dispararam. (5) O5-013 cancelada — a venda-base foi devolvida. (6) Piloto de lance inconclusivo. (7) `B0BHMZBZW9` = Tramontina pedal 30 L a R$ 199,97 com 1.555 avaliações — evidência de mercado para a hipótese preço/oferta nos pedais.

**As 20 linhas do Registro (numeração do canônico, adotada pelo LEO):** O6-001 SP-PP pausar · O6-002 EGC pausar · O6-003 alvo `B09YDLC69D` pausar · O6-004 PI P3070 vigia re-armada · O6-005 loose 0,54 → 0,45 · O6-006 Q2460-B gatilho 28/09 · O6-007 O5-013 cancelada (REJEITADA no Registro) · O6-008 exata "pia de cozinha" vigia · O6-009 O5-014 fechada · O6-010 piloto +1 Era · O6-011 a O6-017 Prime Day, uma por SKU (PXM 10% · PG2460 10% · P3070 15% · P3060 15% · P4080 15% · P3050 10% opcional · **PXP 10% como exceção ao piso por decisão do LEO**) · O6-018 migração NÃO DECIDIR AINDA · O6-019 `B0BHMZBZW9` vigia · O6-020 manutenções. Vereditos das 17 linhas da O5 lançados (13 avaliadas · 3 em maturação · 1 rejeitada). Registro: 72 entradas.

**Prime Day — elegibilidade real (22/09, 18:16 UTC):** só **P3070 e PXP** estão disponíveis em Melhor Oferta para o evento; os outros 5 aprovados (PXM, PG2460, P3060, P4080, P3050) não aparecem na lista da Amazon — reconferir em 28/09; fallback de desconto no preço 05–11/10 **pendente de decisão do LEO**. Q4070-A aparece mas fica fora (decisão do LEO). Arquivo em `relatorios/amazon/prime-day-22-09/`. Ao submeter: trocar o agendamento pré-preenchido "Personalizado 23/09–04/10" por "Mega Ofertas Prime Day" ; PXP: mínimo do evento é 5% (correção do LEO), então a 5% (R$ 159,50, margem 16,8%) fica dentro do piso sem exceção — LEO manteve 10% (R$ 151,10, exceção ao piso). Planilhas de produto das duas ofertas enviadas (P3070 523,75 / 904 un · PXP 151,10 / 419 un), sem erros; print do agendamento no evento pendente.

**Ordem de execução recomendada:** Prime Day primeiro (prazo de inscrição) → as 2 pausas de campanha → o alvo → O6-005 por último, conferindo **por cliques/custo** (70 cli · R$ 45,57), não pelo nome. **Tirar o export pós-execução** e prints — é o que fecha o ciclo no repositório.

**O7 em 13/10** (Era 23/09–12/10, contém o desconto 23–27/09 e o Prime Day inteiro → ler em dois blocos). Monitoramentos: 28/09 (desconto + gatilho Q2460-B) · 05/10 (Livro de setembro primeiro) · 12/10 (véspera, só linha).

## Desconto no preço — 10 SKUs, 21/09 00:00 a 27/09 23:59 (EC-007 a EC-016, ✅ executado 18/09)

- **Mecanismo:** desconto no preço (preço riscado), escolhido pelo LEO em vez de Melhor Oferta. **Terceiro mecanismo** da conta, com **regra de atribuição do Ads ainda não medida** — conferir a primeira venda pedido a pedido.
- **SKUs e percentuais:** L1618-T, L2025-T, L2030, PXP, PXM, Q2460-B a **5%** · PG2460, P3050, P3060, P4080 a **10%**. Pisos de segurança no preço de margem 15%. Tabela completa nos Parâmetros §7.
- **Critério:** tráfego (Business Report 07–13/09) × margem ≥ 15%. Q3060-A saiu da lista por ter 1 sessão/semana. **45 dos 59 ASINs ficaram fora por tráfego ≤ 3 sessões** — lição do EC-006.
- ⚠️ **Q2460-B roda sem preço riscado** ("sem preço de referência" no console) — enfraquece o teste de conversão dele.
- **7 dias (21–27/09), confirmado.** Duas correções antes da ativação: término (ia até 20/10, atravessava o Prime Day) e **início (estava em 18/09 e contaminaria 4 dias da Era O5→O6)**. Sobrepõe 23–27/09 da Era O6→O7 — marcar. Deixa uma semana de preço limpo antes do evento.
- **Prime Day:** a janela de inscrição está aberta desde 18/09 (o arquivo de recomendações já lista o agendamento). **Decidir a lista na O6 e submeter no mesmo dia** — candidatos naturais PXP, PXM e PG2460, os únicos que já converteram com oferta.
- **Arquivo de recomendações da Amazon** (18/09): recusado integralmente — 21 Relâmpago (EC-004), L2450-AML com margem negativa a 29,6%, e o restante por margem ou veredito pendente.
- **Leituras:** 28/09 (7 dias) e O7. Linhas do Registro em `dados/PROPOSTA_linhas_Registro_EC-007_a_016.csv`.

## Cupons de 04/09 — vereditos de 18/09

- **EC-005 (P2025, 12%):** zero vendas em 14 dias → **SEM EFEITO**. Recomendação: encerrar (risco de empilhamento com promo de quantidade, sem ganho).
- **EC-006 (EMB-05/05P/08, 50%):** zero vendas em 14 dias → **NEGATIVO no objetivo** (espaço físico não liberado). Confirma a hipótese registrada em 04/09: **gargalo é tráfego, não preço**. Recomendação: migrar a liquidação de canal (lote/atacado/Mercado Livre). Decisão da Dianna. Cupom pode ficar sem custo, mas não resolve.

## Monitoramento de 14/09 — leitura do 9.9 e conferência da O5

**Conferência de estado: ✅ tudo firme.** 12 ativas / 68 pausadas, as 5 execuções visíveis no export conforme deixadas, nenhum zumbi.

**Janela 07–14/09:** BR **R$ 1.854,36** em 6 pedidos e 10 unidades · Ads atribuiu **R$ 1.594,56** em 5 compras · participação **86,0%** · ACOS 5,81% · TACOS 5,00% · 287 sessões · conversão 2,09%. ⚠️ **Os 86% não são tendência** — são 6 pedidos; na Era da O5 eram 38%.

**Mestra: bijeção ao centavo.** Uma divergência de R$ 65,64 foi encontrada e corrigida — a linha do PXM de 13/09 tinha o desconto da promo de quantidade (25,95) no lugar do desconto da Melhor Oferta (91,59). Depois da correção, Mestra e Business Report fecham em R$ 1.854,36 exatos.

### O veredito do 9.9

| Formato | Deals | Venderam | Receita | Visualizações |
|---|---:|---:|---:|---:|
| **Oferta Relâmpago** | 5 | **0** | **R$ 0,00** | **19** |
| **Melhor Oferta** | 11 | 3 | R$ 1.196,21 (7 un) | 174 |

**As Relâmpago falharam na exibição, não na conversão** — 19 visualizações somadas em cinco dias não dão amostra para converter. Não repetir o formato, inclusive na Black Friday, antes de entender o porquê.

**As três que venderam são PXP, PXM e PG2460** — suporte de extintor e porta-guarda-chuva. **Nenhuma lixeira vendeu com oferta**, e lixeira é o grosso do catálogo e do tráfego. É o achado mais relevante do evento.

**Vem de Amazon:** 13 das 16 ofertas não pontuam.

### Achados

- **Atribuição ao preço da oferta — CONFIRMADA.** 5 pedidos, 3 SKUs, 4 campanhas, todos ao centavo. Deixa de ser inferência. A atribuição a **preço de tabela** vale para a **promoção de quantidade**, mecanismo diferente.
- **A família extintor é a que converte.** Três dos termos vencedores da janela são dela, com custo irrisório: *"suporte para extintor de incêndio chao"* trouxe **R$ 519,03 com R$ 1,40 de clique**.
- ⚠️ **L2025-T: 52 sessões, oferta de −15% no ar, ZERO venda.** Era o motor de vendas — na Era da O5 fez 47 sessões e 4 unidades. Uma semana não decide; se repetir na O6, vira investigação de conversão.
- **SP-PP silenciosa desde 09/09** — a janela da `loose-match` termina exatamente em 09/09, confirmando que a pausa pegou. O gatilho do O5-010 caminha para disparar na O6.
- **O5-014 sem novidade:** a perna L2025-B do termo da 6B segue com **4 cliques e zero venda** — os mesmos de 30 dias atrás, ou seja, não recebeu clique novo. Abaixo do checkpoint de ~15. Manter e reler na O6.

⚠️ **O efeito de O5-001/002 ainda NÃO é avaliável.** Os recorrentes cobrem 15/08–13/09 e a mudança de lance foi em 09/09 — só 5 dos 30 dias são pós-mudança, e a janela se sobrepõe à leitura anterior. Veredito só na O6, com janela limpa.

## No horizonte

- **Monitoramento:** ✅ **realizado em 31/08/2026** — registro em `ciclos/Monitoramento-31-08.md`. Destaques: 3 vendas na janela 24–31/08 (2 atribuídas a Ads), Geral em vigia (ACOS de janela 83,9%, leitura na O5), radar EGC destravou entrega, **auto L1618-o115/07 encontrada ativa e pausada no ato (EC-002, conserto da O4-006)**. O monitoramento de 07/09 foi **eliminado** — feriado, dia não operante confirmado, e a O5 de 08/09 absorve a leitura.
- **O5 prevista:** 08/09/2026 — **Era de dados 26/08–07/09: 13 corridos · 8 úteis · 5 mortos (38%)** (feriado 05–07/09). Convenção de contagem fixada nos Parâmetros, Seção 4. Julgar radares por dias úteis.
- **Vereditos previstos para a O5:** os 4 radares (PI L2470-CZ, PI PG3070, auto PXM-o2, EGC) · o piloto de estratégia da 6B · a primeira leitura real das estruturas O3 (PI PXM-o3, auto PXP-o3, PI L2030-B-o3) · Bituqueiras · o efeito da Geral a R$ 0,48.
- **Item de método para a O5 (31/08):** a atribuição de Ads valoriza vendas **a preço de tabela, antes do desconto promocional** (verificado: Q3060-A 3un atribuído a R$ 1.741,56 contra receita real de R$ 1.654,48). Em SKU com promoção ativa, ROAS atribuído infla e ACOS subestima — considerar ao julgar campanhas na O5. Detalhe em `docs/MEMORIA.md`.
- **PENDÊNCIA NOVA PARA A O5 — Migração de ASIN (01/09):** escopo a decidir na O5, **fundido com a proposta de concentração — são a mesma decisão**. Estratégia **faseada, não parcial**: piloto de 2–3 SKUs na O6 (22/09) → resto do núcleo após 1 Era de leitura → cauda com ficha clonada. Detalhes, sequência obrigatória e riscos na **pendência 7 de `docs/AMAZON_ADS_PARAMETROS_VIGENTES.md`**.
- **Cronograma proposto (NÃO aprovado):** 08/09 O5 (Livro primeiro; decisão de escopo da migração) · 09–21/09 produção de fotos/copy/A+ (nada publicado) · 22/09 O6 (piloto na virada de Era) · Era O6→O7 primeira leitura limpa; só depois se decide o resto.
- **Fila de conversão** aberta, agora em **dois níveis** (decisão de 26/08): revisão barata ordena por valor diagnóstico; investimento profundo ordena por lucro × tráfego. Ordens e tabela na **pendência 2 de `docs/AMAZON_ADS_PARAMETROS_VIGENTES.md`** — fonte única.

## Pendências abertas — cobrar nos monitoramentos

1. **Confirmar execução de O4-014 e O4-015 — ✅ RESOLVIDA em 26/08.** Execução confirmada no console por Wintech; Registro de Alterações preenchido com as 19 entradas da O4 em status **EXECUTADA - EM MATURAÇÃO**.
2. **Fila de conversão — DECIDIDA EM DOIS NÍVEIS (26/08).** São duas atividades com critérios distintos: a **revisão barata** (minutos por SKU) ordena por **valor diagnóstico**; o **investimento profundo** (horas) ordena por **lucro × tráfego**. As duas ordens e a tabela de lucro esperado estão na **pendência 2 de `docs/AMAZON_ADS_PARAMETROS_VIGENTES.md`** — fonte única, não duplicar aqui. O Nível 2 e a proposta de concentração são **uma decisão só na O5**.
3. **Lances por segmentação da Geral** (close / loose / substitutes / complements) — coletar no console na O5; relevante depois de O4-015.
4. **Halo Q2430-A — ✅ RESOLVIDA em 08/09.** Confirmado no fechamento do Livro de agosto: halo Q2430-A → Q3060-A, pedido de R$ 1.741,56 = 3 un da Aro Quadrada 50L (B0H51P391G), atribuído à Geral DBA.
5. **Para a O5:** dados vitalícios por alvo de PI (régua formal de 15+ cliques) · Business Report na janela exata da O5 · BR mensal de agosto vs julho no fechamento do Livro (08/09) · primeira leitura de Bituqueiras e das estruturas O3 · veredito dos 4 radares · veredito do piloto 6B · leitura do efeito da Geral a 0,48 · reavaliar CTR do SP-PP pós-limpeza · **acompanhar gasto contra o teto de R$ 1.000**.

## Aprendizados e decisões consolidadas (não re-litigar)

- Régua Radar ativa; regra antiga "R$5 → +20%" aposentada (absorvida pelo Radar).
- Referências de 20–25/30–50 cliques são apenas históricas.
- Campo Status do Controle Semanal usa somente categorias oficiais (ex.: VIGIA); notas qualitativas vão no campo Notas.
- TOS IS e dados de Cinzeiros: reportar apenas como métrica bruta; nunca inferir teto de demanda, headroom ou volume de mercado.
- Estrutura promocional finalizada: 3+ unidades = 5% (catálogo amplo, margem ≥19%); 5+ unidades = 8% (somente Pequenos/Médios, **83 SKUs** após inclusão do SP-T em 28/08; Grandes excluídos por risco de subsídio de frete).
- Geradores de IA têm dificuldade com edições geométricas precisas; Photopea preferido para correções cirúrgicas. Lógica de posicionamento funcional em imagens de ambientação (ex.: coletor em entradas de bares/hotéis, não no meio do salão).
- **Pausa por inelegibilidade ≠ falha de desempenho.** Não entra em contrapeso vitalício nem em leitura de performance.
- **ACOS abaixo do Objetivo não aciona automaticamente a régua de orçamento.** Se a campanha consome uma fração do próprio teto, o orçamento não é a restrição — o crescimento sai pelo lance.

## Metodologia de origem

O método operacional foi originalmente estabelecido por um assessor (Henrique) e vem sendo progressivamente formalizado em documentação oficial (Playbook, Guia, Skill).

---

## Estado do repositório (Claude Code)

| Fonte | Arquivo | Situação |
|---|---|---|
| Método | `docs/PLAYBOOK_OFICIAL_AMAZON_ADS_WINNET_v1.md` | ✅ íntegro |
| Estado | `docs/AMAZON_ADS_PARAMETROS_VIGENTES.md` | ✅ snapshot 25/08/2026 (pós-O4) + atualizações de 28/08 e 01/09 (pendência 7 — migração de ASIN) |
| Guia da Mestra | `docs/GUIA_PLANILHA_MESTRA.md` | ✅ íntegro |
| Skill | `.claude/skills/amazon-ads-winnet/SKILL.md` | ✅ v1.6.3 |
| Planilha Mestra | `dados/Planilha_Mestra_Winnet_v4_3_4.xlsx` | ✅ 9 abas · validações x14 restauradas (pendente conferência no Excel) |
| Controle Semanal | `dados/Controle_Semanal_Amazon_Ads_Winnet.xlsx` | ✅ |
| Registro de Alterações | `dados/Registro_Alteracoes_Amazon_Ads_Winnet.xlsx` | ✅ 23 entradas (19 da O4 + EC-001/002/003/004). **EC-005 e EC-006 ainda não lançados pelo LEO** |
| Relatórios da O4 | `relatorios/amazon/` | ✅ 9 arquivos, janela 25/07–23/08 |
| Ciclos | `ciclos/O4-25-08.md` | ✅ |

---

## Log de atualizações deste documento

| Data | Ciclo | O que mudou |
|---|---|---|
| 19/08/2026 | — | Snapshot exportado da memória do Project |
| 25/08/2026 | — | Migração para o Claude Code concluída; correção da leitura da política de fumo |
| 25/08/2026 | **O4** | Fechamento do ciclo: novo snapshot dos Parâmetros, teto mensal de Ads de R$ 1.000, estado da conta pós-execuções, mapa vivo e pendências da O5 |
| 28/08/2026 | entre-ciclos | Calendário de envio 07/09 confirmado como não operante · monitoramento de 07/09 eliminado · convenção de contagem da Era fixada (13/8/38%) · promoções auditadas e conformes · SP-T incluído na promo 5+ (82→83) · escopo do frete ampliado para Pequenos · correção 15→19 ações da O4 |
| 31/08/2026 | entre-ciclos | Monitoramento semanal realizado (3 vendas na janela, 2 atribuídas) · EC-002: pausa da auto L1618 reexecutada · achado: atribuição de Ads a preço de tabela |
| 01/09/2026 | entre-ciclos | **Brand Registry WINNET METAIS aprovado** · bloqueio de ASIN genérico confirmado (recriação é o único caminho) · Vine indisponível (exige FBA) · diagnóstico de catálogo (sem EAN, sem variações, 114 páginas isoladas) · **decisão EAN próprio via GS1** (Wintech + Dianna) · pendência nova: migração de ASIN, escopo na O5 · risco INPI em oposição |
| 02/09/2026 | entre-ciclos | Pacote 9.9 executado: 16 ofertas aceitas para 07–13/09 (EC-003/EC-004) · Registro de Alterações com 23 entradas |
| 04/09/2026 | entre-ciclos | Cupons fora do pacote 9.9: EC-005 (P2025 12%) e EC-006 (EMB-05/EMB-05P/EMB-08 a 50%, liquidação abaixo do custo por decisão da Dianna, sem teto de orçamento) · gatilho de revisão em 18/09 |
| 08/09/2026 | pré-O5 | **Livro_Vendas de agosto fechado** · Planilha Mestra promovida a **v4.3.3** (v4.3.2 preservada) · receita de agosto R$ 13.915,83 com **68,4% orgânico** · Ads ≈ 32% da receita do mês · **pendência 4 (halo Q2430-A) resolvida** · achado do fechamento: lançamento a preço de tabela |
| 08/09/2026 | pré-O5 | **Mestra v4.3.4**: 4 vendas de setembro (02, 03, 05 e 07/09) · validações de dados perdidas no fechamento e **restauradas por reinjeção do `extLst`** · regra nova: Mestra não pode ser salva por `openpyxl` |
| 09/09/2026 | **O5** | Ciclo concluído como análise (17 linhas aprovadas, execução pendente) · correção de 15→16 campanhas ativas · O4-015 confirmada inerte · SP-01 diagnosticado em três camadas · gasto de setembro em 41–46% do teto · **monitoramento de 21/09 eliminado** com conferência de estado obrigatória em 14/09 como contrapartida · divergência SP-T/SP-01 na Bituqueiras em aberto |
| 09/09/2026 | **O5 executada** | 8 ações no console, todas conferidas · O5-010 saiu invertida (nomes PT-BR das segmentações) e foi corrigida no mesmo dia pela conferência pós-execução · O5-013 não executada (L2030-T fora do grupo da 6B) · **C7: a PI PXM entrega — o diagnóstico havia invertido entrega e CTR** · conta em 12 ativas · Parâmetros com o snapshot pós-execução |
| 22/09/2026 | **O6** | Ciclo concluído como análise: canônico analisou, Code auditou (números conferidos; 3 ressalvas de leitura). **G1–G13 aprovados pelo LEO, execução pendente.** Era 10–21/09: ACOS 10,75%, Ads 64,7%, TACOS 6,96%. PI P3070 converteu no alvo próprio; `B09YDLC69D` cruzou a régua; loose-match é o dreno da Geral. Pausas de SP-PP e EGC; O5-013 cancelada; Prime Day com 7 SKUs (PXP como exceção ao piso). **O7 marcada para 13/10** (decisão do LEO). Mestra do Project trocada pela versão de 21/09 |
| 21/09/2026 | controle semanal | **Linha 13 (14–21/09) — só registro, sem diagnóstico (regra da véspera).** 43.599 impr · 146 cli · R$ 130,55 · R$ 749,08 em 2 vendas (P3070 pela PI, L2025-T pela Geral) · ACOS 17,4% na primeira semana limpa pós-O5. **Sinais para a O6 ler com a Era inteira:** impressões dobraram pela PI P3070 (≈27,9 mil, CTR 0,14%, 39 cli, R$ 56,55); Geral com ACOS 44,5% na semana (1 venda); EGC CTR 0,17% e 0 venda; SP-PP 0 cliques. Setembro em 28,8% do teto. Mestra: +2 vendas L2025-T (19 e 20/09, a de 20/09 com promo de quantidade, não desconto no preço); **devolução nova L2030-T de 01/09 aprovada 17/09**. BR de 14–20/09 puxado em 21/09 não traz o pedido de 20/09 — atraso de ~1 dia |
| 18/09/2026 | entre-ciclos | **Desconto no preço em 10 SKUs, 21/09–27/09 (EC-007 a EC-016)** — terceiro mecanismo, regra de atribuição a medir. Arquivo de recomendações da Amazon recusado integralmente (21 Relâmpago; L2450-AML a −6,2% de margem). Q3060-A retirado por 1 sessão/semana. Data final corrigida de 20/10 para 27/09 antes da ativação, preservando o Prime Day; lista do evento se decide na O6. **EC-005 e EC-006 avaliados: zero vendas em 14 dias** nos dois cupons; hipótese de tráfego confirmada nos EMB |
| 15/09/2026 | Ads | **Gatilho O5-011 DESARMADO.** A venda do P3070 de 15/09 (**R$ 616,18**, maior ticket da Era) foi **atribuída à própria PI P3070-o228/07**, posterior ao Relâmpago — a primeira condição do gatilho caiu e **não há redução de lance**. É a **primeira conversão da PI desde 21/06**. Não promove a campanha a ESCALAR: a O6 precisa do alvo que converteu (régua de PI é no nível do alvo) e do gasto da Era inteira. Não calcular ACOS com a janela parcial de 07–14/09. Break-even do SKU ≈ 25,8% |
| 14/09/2026 | correção | **A filiação à GS1 NÃO estava parada** — o portal mostra 2 dos 3 documentos aprovados e só o **Faturamento Fiscal do Último Exercício** pendente, com análise de 1–2 dias úteis. O `CHECKLIST_GS1_EAN.md` afirmava que nada havia sido iniciado; **reativado e corrigido**. A pendência é da Winnet (documento da contabilidade, define a faixa de anuidade), não da GS1. **Comparação de caminhos inverteu-se:** GS1 a um documento e 1–2 dias; isenção dependente de mudança de produção sem data |
| 14/09/2026 | bloqueio | **Isenção de GTIN RECUSADA.** Causa raiz identificada: **três grafias diferentes** — produto que embarca `Winnet Home & Pro` (adesivo) · amostra fotografada `WIN NET METAIS` (gravada no inox) · Brand Registry `WINNET METAIS`. As fotos eram da **amostra, não da unidade que embarca**; refazer fotos não resolve. **Bloqueio é físico: o cronograma da migração passa a depender da produção, não da Amazon.** Corte de 19/09 cancelado; escopo da migração na O6 vai a NÃO DECIDIR AINDA. Achado positivo: a fábrica consegue gravar a marca no inox permanentemente — superior ao adesivo. Em aberto: grafia exata do Brand Registry, entrada da gravação em produção, saída do adesivo antigo |
| 14/09/2026 | decisão | **Caminho do identificador de produto REVERTIDO por decisão do LEO: isenção de GTIN substitui o EAN próprio via GS1.** Pedido feito dentro do cadastro de anúncio novo, sem retorno da Amazon. Gate da migração de ASIN na O6 deixa de ser GS1 e passa a ser a isenção. Checklist GS1 suspenso; `CHECKLIST_ISENCAO_GTIN.md` criado. NF, adesivo e demais canais ficam sem solução por esse caminho; risco acoplado ao INPI registrado |
| 14/09/2026 | monitoramento | Conferência de estado da O5 ✅ · 9.9 lido: Relâmpago zero em 5 deals, Melhor Oferta 3 de 11 · nenhuma lixeira vendeu com oferta · atribuição ao preço da oferta confirmada com 5 pedidos · divergência de R$ 65,64 na Mestra corrigida, bijeção ao centavo · setembro em 15,8% do teto |
