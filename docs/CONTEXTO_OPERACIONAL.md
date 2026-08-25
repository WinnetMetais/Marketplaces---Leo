# CONTEXTO OPERACIONAL — SNAPSHOT

**Data do snapshot:** 25/08/2026
**Natureza:** DOCUMENTO VIVO. Representa o estado operacional no momento do snapshot, exportado da memória do Project do Claude.ai na migração para o Claude Code. Atualizar sempre que o estado mudar; nunca tratar como regra permanente.

---

## Estado atual

- **Ciclo de Ads:** O3 executado (referência 11/08/2026). Todas as estruturas O3 em incubação, com primeira leitura na **O4 (25/08/2026 — hoje)**.
- **Monitoramento semanal (período 10–16/08):** Status VIGIA; nenhuma intervenção em campanha autorizada. Geral Automática sinalizada para confirmação na O4. Ajuste de TOS do Extintor corrigido no console.
- **SP-01 e SP-T — política de fumo:** Ambas pausadas; gatilho de reativação vinculado à resolução do caso **21652133321** (agente Rebeca, resposta indicada em 48h). Caminho de resolução: reverter títulos para linguagem "Coletor de Bitucas"; vocabulário adjacente a fumo (cinzeiro, bituqueira) restrito a search terms de backend. Precedente: caso 21577340991 confirmou requalificação anterior.
- **Planilha Mestra:** versão canônica **v4.3.2** (`dados/Planilha_Mestra_Winnet_v4_3_2.xlsx`).
- **Livro_Vendas:** fechamento de agosto/2026 em **07/09/2026** (primeira segunda de setembro). Cobertura atual até 06/08/2026; lançamentos de 07–16/08 pendentes no Registro_Vendas. Atribuição de origem (Ads/Orgânico) exige cruzamento com relatórios de publicidade no fechamento; lançamentos não classificáveis devem ser sinalizados para decisão da Wintech — nunca inferidos.
- **Imagens de produto:** trabalho contínuo em múltiplos SKUs com geradores de IA (GPT, Gemini) e edição manual (Photopea, Canva), prompts em português.

## No horizonte

- **O4 (25/08/2026):** primeira leitura de todas as estruturas O3; avaliar desempenho da Geral Automática; Bituqueiras reclassificadas como INVESTIGAR ENTREGA pendente de diagnóstico. Vigias com veredito previsto: PI P3050, PI L2470-CZ, PI PG3070. Revisar PI SP-01.
- **Levantamento pendente na O4:** inventário completo de estratégias de lance, campanha por campanha (nome, tipo, portfólio, papel, estratégia, orçamento, status, última otimização).
- **Reativação SP-01/Bituqueiras** condicionada à resolução do caso 21652133321.
- **Fechamento mensal do Livro_Vendas** em 07/09/2026.
- **O5 estimada:** ~08/09/2026.
- Continuidade do desenvolvimento de imagens para SKUs ativos.

## Aprendizados e decisões consolidadas (não re-litigar)

- Régua Radar ativa; regra antiga "R$5 → +20%" aposentada (absorvida pelo Radar).
- Referências de 20–25/30–50 cliques são apenas históricas.
- Campo Status do Controle Semanal usa somente categorias oficiais (ex.: VIGIA); notas qualitativas vão no campo Notas.
- TOS IS e dados de Cinzeiros: reportar apenas como métrica bruta; nunca inferir teto de demanda, headroom ou volume de mercado.
- Estrutura promocional finalizada: 3+ unidades = 5% (catálogo amplo, margem ≥19%); 5+ unidades = 8% (somente Pequenos/Médios, 82 SKUs; Grandes excluídos por risco de subsídio de frete).
- Geradores de IA têm dificuldade com edições geométricas precisas; Photopea preferido para correções cirúrgicas. Lógica de posicionamento funcional em imagens de ambientação (ex.: coletor em entradas de bares/hotéis, não no meio do salão).

## Metodologia de origem

O método operacional foi originalmente estabelecido por um assessor (Henrique) e vem sendo progressivamente formalizado em documentação oficial (Playbook, Guia, Skill).

---

## Estado do repositório (Claude Code)

**Migração concluída em 25/08/2026.** Fontes oficiais carregadas:

| Fonte | Arquivo | Situação |
|---|---|---|
| Método | `docs/PLAYBOOK_OFICIAL_AMAZON_ADS_WINNET_v1.md` | ✅ íntegro |
| Estado | `docs/AMAZON_ADS_PARAMETROS_VIGENTES.md` | ✅ snapshot 14/08/2026 |
| Guia da Mestra | `docs/GUIA_PLANILHA_MESTRA.md` | ✅ íntegro |
| Skill | `.claude/skills/amazon-ads-winnet/SKILL.md` | ✅ v1.6.3, 2.135 linhas |
| Planilha Mestra | `dados/Planilha_Mestra_Winnet_v4_3_2.xlsx` | ✅ 9 abas |
| Controle Semanal | `dados/Controle_Semanal_Amazon_Ads_Winnet.xlsx` | ✅ 62 linhas |
| Registro de Alterações | `dados/Registro_Alteracoes_Amazon_Ads_Winnet.xlsx` | ✅ 210 linhas |

### Abas da Planilha Mestra v4.3.2

`LEIA-ME` · `Resumo` (68) · `Simulador` (232 = SKUs × 2 cenários) · `Registro_Vendas` (117) · `Livro_Vendas` (37) · `Novo_Produto` (25) · `Ref_Frete` (54) · `Classificação_Frete` (119) · `Listas` (114)

### Único bloqueador para a O4

- [ ] **Relatórios Amazon da janela de 30 dias** em `relatorios/amazon/` — Termos de Pesquisa, Segmentação, Produtos Anunciados, Posicionamento, Campanhas, Parcela de Impressões, Export do Gerenciador (com coluna Estado) e Relatório de Negócios.

Sem eles a O4 não abre. Todo o restante do método já está operante.

---

## Log de atualizações deste documento

| Data | Ciclo | O que mudou |
|---|---|---|
| 19/08/2026 | — | Snapshot exportado da memória do Project |
| 25/08/2026 | — | Migração para o Claude Code concluída: docs oficiais, Mestra v4.3.2 e planilhas carregadas; stack Ruflo + claude-mem + find-skills ativa; correção da leitura da política de fumo |
