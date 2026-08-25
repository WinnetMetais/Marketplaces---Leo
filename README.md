# Marketplaces — Winnet Metais

Repositório operacional de gestão de marketplaces da Winnet Metais.
Marketplace primário: **Amazon**. Mercado Livre entra como sinal externo.

Operado por **LEO**. Todas as sessões deste repositório tratam o usuário por LEO e entregam em português do Brasil.

> ⚠️ **Repositório privado.** As planilhas em `dados/` contêm custo e margem.
> Nenhum token, credencial ou chave entra neste repositório.

---

## Setup

### 1. Clonar

```bash
git clone https://github.com/WinnetMetais/Marketplaces---Leo.git
cd Marketplaces---Leo
```

### 2. Instalar a stack global (uma vez por máquina)

```bash
bash scripts/instalar-stack-global.sh
```

Instala, no nível do usuário:

| Componente | Origem | Função |
|---|---|---|
| **find-skills** | `vercel-labs/skills` | Descobre e instala skills sob demanda (`npx skills find`) |
| **claude-mem** | `thedotmack/claude-mem` | Memória persistente entre sessões |
| **Ruflo** | `ruvnet/ruflo` | Orquestração de agentes — scaffold já versionado aqui |

O scaffold do Ruflo (agentes, comandos, skills, helpers, `.mcp.json`) **já está versionado** neste repositório.
**Não rode `npx ruflo init` na raiz** — ele sobrescreve o `CLAUDE.md` do projeto.

### 3. Carregar os dados

As planilhas já estão em `dados/`:

```
dados/
  Planilha_Mestra_Winnet_v4_3_2.xlsx          # canônica — 9 abas
  Controle_Semanal_Amazon_Ads_Winnet.xlsx
  Registro_Alteracoes_Amazon_Ads_Winnet.xlsx
```

Falta apenas carregar os exports da janela em `relatorios/amazon/`:

```
relatorios/amazon/
  2026-07-26_2026-08-24__termos-de-pesquisa.xlsx
  2026-07-26_2026-08-24__campanhas.xlsx
  ...
```

Ver `relatorios/amazon/README.md` para as convenções de nome.

### 4. Abrir

```bash
claude
```

Na primeira sessão, rode `/context` para confirmar que `CLAUDE.md` e a skill `amazon-ads-winnet` carregaram, e `/winnet:contexto` para o estado da operação.

---

## Uso

### Rituais do Playbook

| Comando | Modo | O que faz |
|---|---|---|
| `/winnet:monitoramento-semanal` | A | Monitoramento de 7 dias — emergências, falta de entrega, vigias |
| `/winnet:otimizacao-ox O4` | B | Otimização quinzenal completa, entrega A–I |
| `/winnet:investigar <alvo>` | C | Investigação pontual de campanha, SKU, ASIN ou termo |
| `/winnet:ads-x-total` | D | Cruza Ads × vendas totais × não atribuídas |
| `/winnet:fechar-ciclo O4 19/08` | — | Fecha o ciclo e faz o commit `[Ox dd/mm]` |
| `/winnet:contexto` | — | Estado atual, inventário e prontidão para Ox |

### Subagentes

`auditor-dados-amazon` · `ads-analista-amazon` · `financeiro-mestra` · `termos-e-negativas` · `listing-e-conversao` · `ads-x-vendas-totais` · `sinal-mercado-livre` · `relator-ox`

Mais 17 agentes Ruflo (coordenação, consenso, SPARC, testes) em `.claude/agents/`.

---

## Trava de execução

Este repositório **analisa e recomenda**. Não executa alterações em campanhas, orçamento, lances, segmentações, negativas, promoções, preços ou listings — mesmo quando há conector ou MCP com permissão de escrita.

Toda alteração aguarda **aprovação explícita do LEO**.

---

## Fechamento de ciclo

Ao final de cada Ox, **após aprovação**:

1. Atualizar `docs/AMAZON_ADS_PARAMETROS_VIGENTES.md`
2. Registrar em `ciclos/Ox-dd-mm.md`
3. Atualizar `docs/CONTEXTO_OPERACIONAL.md`
4. Anexar aprendizados em `docs/MEMORIA.md`
5. Commit `[Ox dd/mm] resumo`

O histórico do git é o registro oficial dos ciclos — cumpre o papel que o histórico de conversas cumpria no Project original.

---

## Documentação

| Arquivo | Conteúdo |
|---|---|
| `CLAUDE.md` | Governança do projeto — lido automaticamente em toda sessão |
| `docs/CONTEXTO_OPERACIONAL.md` | Snapshot vivo: ciclo, casos abertos, cobertura das fontes, pendências |
| `docs/PLAYBOOK_OFICIAL_AMAZON_ADS_WINNET_v1.md` | Método — COMO analisar e decidir |
| `docs/AMAZON_ADS_PARAMETROS_VIGENTES.md` | Estado vivo — ACOS 9/18/36%, lances, ciclo, campanhas, promoções |
| `docs/GUIA_PLANILHA_MESTRA.md` | Como ler a Mestra e suas armadilhas financeiras |
| `docs/MEMORIA.md` | Aprendizados consolidados que não devem ser reaprendidos |
| `docs/RELATORIO_CAPACIDADES.md` | Inventário completo das capacidades ativas |
