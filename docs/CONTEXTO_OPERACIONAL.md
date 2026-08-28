# CONTEXTO OPERACIONAL — SNAPSHOT

**Data do snapshot:** 25/08/2026 (pós-O4), com atualizações operacionais de 28/08/2026
**Natureza:** DOCUMENTO VIVO. Representa o estado operacional no momento do snapshot. Atualizar sempre que o estado mudar; nunca tratar como regra permanente.

---

## Estado atual

- **Ciclo de Ads:** **O4 concluída em 25/08/2026.** 19 ações aprovadas e executadas por Wintech. Registro completo em `ciclos/O4-25-08.md`.
- **Estado da conta:** 15 campanhas ativas (eram 21 na manhã de 25/08; a O4 pausou 5, e a PI SP-01 está pausada desde 17/08).
- **Geral Automática DBA-o3:** única vendedora — 100% da receita atribuída, ACOS 6,06%. Orçamento R$ 90 mantido; lance padrão escalado de R$ 0,40 para **R$ 0,48**.
- **Teto mensal de Ads:** **R$ 1.000/mês** (definido por Dianna, registrado em 25/08). Uso atual ~35%.
- **SP-01 — política de fumo:** **caso encerrado.** Contestação negada em 2ª análise (25/08). A PI SP-01-o228/07 fica **pausada por inelegibilidade** — não é falha de desempenho. A auto SP-01-o116/07 foi reativada entre 17 e 25/08 após requalificação do ASIN.
- **SP-PP:** anomalia resolvida na causa — segmentação `substitutes` pausada e negativas aplicadas (12 exatas + 6 frases). CTR a reavaliar pós-limpeza na O5.
- **Planilha Mestra:** versão canônica **v4.3.2** (`dados/Planilha_Mestra_Winnet_v4_3_2.xlsx`).
- **Livro_Vendas:** fechamento de agosto/2026 movido de 07/09 para **08/09/2026** — exceção documentada por feriado da Independência (07/09, segunda), **não** mudança de protocolo. **Ordem no dia: Livro_Vendas primeiro, O5 depois.** Atribuição de origem (Ads/Orgânico) exige cruzamento com relatórios de publicidade no fechamento; lançamentos não classificáveis devem ser sinalizados para decisão da Wintech — nunca inferidos.
- **Imagens de produto:** trabalho contínuo em múltiplos SKUs com geradores de IA (GPT, Gemini) e edição manual (Photopea, Canva), prompts em português.

## No horizonte

- **Monitoramento:** 31/08/2026. O de 07/09 foi **eliminado** — feriado, dia não operante confirmado, e a O5 de 08/09 absorve a leitura.
- **O5 prevista:** 08/09/2026 — **Era de dados 26/08–07/09: 13 corridos · 8 úteis · 5 mortos (38%)** (feriado 05–07/09). Convenção de contagem fixada nos Parâmetros, Seção 4. Julgar radares por dias úteis.
- **Vereditos previstos para a O5:** os 4 radares (PI L2470-CZ, PI PG3070, auto PXM-o2, EGC) · o piloto de estratégia da 6B · a primeira leitura real das estruturas O3 (PI PXM-o3, auto PXP-o3, PI L2030-B-o3) · Bituqueiras · o efeito da Geral a R$ 0,48.
- **Fila de conversão** aberta, agora em **dois níveis** (decisão de 26/08): revisão barata ordena por valor diagnóstico; investimento profundo ordena por lucro × tráfego. Ordens e tabela na **pendência 2 de `docs/AMAZON_ADS_PARAMETROS_VIGENTES.md`** — fonte única.

## Pendências abertas — cobrar nos monitoramentos

1. **Confirmar execução de O4-014 e O4-015 — ✅ RESOLVIDA em 26/08.** Execução confirmada no console por Wintech; Registro de Alterações preenchido com as 19 entradas da O4 em status **EXECUTADA - EM MATURAÇÃO**.
2. **Fila de conversão — DECIDIDA EM DOIS NÍVEIS (26/08).** São duas atividades com critérios distintos: a **revisão barata** (minutos por SKU) ordena por **valor diagnóstico**; o **investimento profundo** (horas) ordena por **lucro × tráfego**. As duas ordens e a tabela de lucro esperado estão na **pendência 2 de `docs/AMAZON_ADS_PARAMETROS_VIGENTES.md`** — fonte única, não duplicar aqui. O Nível 2 e a proposta de concentração são **uma decisão só na O5**.
3. **Lances por segmentação da Geral** (close / loose / substitutes / complements) — coletar no console na O5; relevante depois de O4-015.
4. **Halo Q2430-A** — confirmar no `Registro_Vendas` a composição do pedido de R$ 1.741,56. O valor bate com 3 unidades da Aro Quadrada 50L (B0H51P391G).
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
| Estado | `docs/AMAZON_ADS_PARAMETROS_VIGENTES.md` | ✅ snapshot 25/08/2026 (pós-O4) + atualizações de 28/08 |
| Guia da Mestra | `docs/GUIA_PLANILHA_MESTRA.md` | ✅ íntegro |
| Skill | `.claude/skills/amazon-ads-winnet/SKILL.md` | ✅ v1.6.3 |
| Planilha Mestra | `dados/Planilha_Mestra_Winnet_v4_3_2.xlsx` | ✅ 9 abas |
| Controle Semanal | `dados/Controle_Semanal_Amazon_Ads_Winnet.xlsx` | ✅ |
| Registro de Alterações | `dados/Registro_Alteracoes_Amazon_Ads_Winnet.xlsx` | ✅ 19 entradas da O4 lançadas pelo Wintech em 26/08, status **EXECUTADA - EM MATURAÇÃO** (conferido pelo chat canônico) |
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
