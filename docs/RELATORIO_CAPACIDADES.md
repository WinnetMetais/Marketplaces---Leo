# Relatório de Capacidades — Marketplaces Winnet

**Data:** 19/08/2026 · **Operador:** LEO · **Marketplace primário:** Amazon

---

## 1. O que foi instalado

| Componente | Origem | Escopo | Status |
|---|---|---|---|
| `find-skills` | `vercel-labs/skills` | Global (`~/.claude/skills/`) | ✅ Ativa |
| `claude-mem` v13.15.2 | `thedotmack/claude-mem` | Global (`~/.claude/plugins/`) | ✅ Instalada — worker sob demanda |
| **Ruflo** (`claude-flow` 3.38.12) | `ruvnet/ruflo` | Versionado no repositório | ✅ Ativo |
| Skill `amazon-ads-winnet` v1.6.3 | Project original | `.claude/skills/` | ✅ 2.135 linhas, íntegra |

---

## 2. Números

| Recurso | Quantidade |
|---|---:|
| Skills disponíveis no repositório | 33 |
| Subagentes | 25 (8 Winnet + 17 Ruflo) |
| Slash commands | 154 (6 Winnet + 148 Ruflo) |
| Helpers de runtime Ruflo | 43 |
| Documentos de governança | 6 |
| Arquivos no commit inicial | 271 (57.602 linhas) |

---

## 3. Capacidades por camada

### 3.1 Método — a Skill v1.6.3

Codifica o ciclo **LER → VALIDAR → CRUZAR → ANALISAR → EXPLICAR → RECOMENDAR** em 44 seções, incluindo os refinamentos dos Testes Reais 1–6.

Cobre: hierarquia de fontes · 4 modos de trabalho · inventário de 11 insumos · validação de relatórios · cruzamento Ads × total · diagnóstico entrega × conversão · Radar · checkpoint de cliques · PI (alvo ≠ campanha) · contrapeso vitalício · réguas de orçamento e lance · termos e negativas · SKU e listing · zumbis e vigias · Mercado Livre como sinal · níveis de confiança · 14 categorias de decisão · formato de entrega A–I · trava de execução · regras antialucinação · precisão de TOS IS/SIS · Mestra × Ads · `Registro_Vendas`/`Livro_Vendas`.

### 3.2 Execução — os 8 subagentes Winnet

| Agente | Entrega |
|---|---|
| `auditor-dados-amazon` | Bloco B + mapa de cruzamentos permitidos/proibidos |
| `ads-analista-amazon` | Bloco D — diagnóstico por campanha |
| `financeiro-mestra` | Bloco E — margem, break-even ACOS, rentabilidade |
| `termos-e-negativas` | Bloco F — vencedores, negativas, promoção a Manual |
| `listing-e-conversao` | Diagnóstico de conversão pós-clique |
| `ads-x-vendas-totais` | Bloco C — Ads × total × não atribuído |
| `sinal-mercado-livre` | Sinal externo de preço e demanda |
| `relator-ox` | Consolidação A–I + checagem de coerência + rastreabilidade |

### 3.3 Rituais — os 6 comandos

`/winnet:monitoramento-semanal` (Modo A) · `/winnet:otimizacao-ox` (Modo B) · `/winnet:investigar` (Modo C) · `/winnet:ads-x-total` (Modo D) · `/winnet:fechar-ciclo` · `/winnet:contexto`

### 3.4 Memória — três camadas

| Camada | Mecanismo | Guarda |
|---|---|---|
| Automática | `claude-mem` | Contexto de sessões anteriores, injetado a partir da 2ª sessão |
| Curada | `docs/MEMORIA.md` | Armadilhas confirmadas e linguagem obrigatória |
| Estado | `docs/CONTEXTO_OPERACIONAL.md` + hook de SessionStart | Ciclo, casos, cobertura das fontes, inventário ao vivo |

O hook `.claude/hooks/contexto-winnet.sh` injeta estado e inventário em **toda** sessão deste repositório.

### 3.5 Descoberta — `find-skills`

Busca e instala skills sob demanda (`npx skills find <termo>`), com verificação de reputação e contagem de instalações antes de recomendar.

### 3.6 Orquestração — Ruflo

17 agentes de coordenação (consenso Byzantine/Raft/gossip/quorum, CRDT, topologias mesh/hierárquica/adaptativa, SPARC, validação de produção, TDD), 30 skills de orquestração e memória vetorial, servidor MCP `claude-flow`, e hooks em 10 pontos do ciclo de vida.

### 3.7 Planilhas e documentos

Skills `xlsx` (Mestra, Controle Semanal, Registro de Alterações), `pdf`, `docx`, `pptx` e `dataviz` disponíveis para leitura de dados e produção de entregáveis.

---

## 4. Travas ativas

1. **Execução** — analisa e recomenda; nunca altera Ads, preço, listing ou promoção sem aprovação explícita do LEO.
2. **Antialucinação** — nunca inventa SKU, campanha, lance, orçamento, margem, ASIN ou termo. Lacuna se declara.
3. **Segredos** — `.gitignore` bloqueia `.env*`, `*.token`, `*.pem`, `*.key`, `secrets/`; `settings.json` nega leitura de `.env` e `secrets/`.
4. **Modelo** — o pin `claude-sonnet-5` do scaffold Ruflo foi removido; a sessão herda o modelo escolhido.

---

## 5. O que ainda falta

| Pendência | Impacto | Situação |
|---|---|---|
| ~~Planilhas em `dados/`~~ | — | ✅ carregadas em 25/08 |
| ~~Valores dos Parâmetros Vigentes~~ | — | ✅ ACOS 9/18/36%, lances e promoções reais |
| ~~Playbook e Guia da Mestra integrais~~ | — | ✅ carregados em 25/08 |
| **Relatórios Amazon da janela** | **Único bloqueador da O4** | ⬜ pendente |
| Permissão de escrita do GitHub App | Push automático | ✅ liberada em 25/08 |

---

## 6. Prontidão

| Capacidade | Status |
|---|---|
| Método Amazon Ads completo | ✅ |
| Subagentes e rituais | ✅ |
| Memória em três camadas | ✅ |
| Governança e travas | ✅ |
| Análise financeira | ✅ Mestra v4.3.2 com 9 abas |
| Execução da O4 | ⬜ aguarda os relatórios da janela |
| Push automático | ✅ |
