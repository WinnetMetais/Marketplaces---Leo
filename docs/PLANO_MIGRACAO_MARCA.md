# PLANO DE MIGRAÇÃO DE MARCA — Genérico → WINNET METAIS

**Criado:** 17/09/2026 · **Autor:** Claude Code · **Aprovação/auditoria:** LEO
**Status:** PLANO CONSOLIDADO. **Nada executado na conta.** Insumo para a O6 (22/09), onde o escopo da migração está como `NÃO DECIDIR AINDA`.

> ⚠️ **Trava de execução (CLAUDE.md §1).** Este repositório opera em **ANALISAR → RECOMENDAR**. Nenhum passo abaixo — criar anúncio, encerrar oferta, trocar produto em grupo, pedir isenção, alterar categoria — é executado sem aprovação explícita do LEO. Recomendar não é autorizar.

Consolida e cruza: `CHECKLIST_ISENCAO_GTIN.md` · `CHECKLIST_GS1_EAN.md` · `CONTEXTO_OPERACIONAL.md` · `AMAZON_ADS_PARAMETROS_VIGENTES.md` (pendência 7) · `PROPOSTA_CONCENTRACAO_O5.md`.

---

## 0. Objetivo em uma frase

Recriar o catálogo sob a marca registrada **WINNET METAIS** (hoje os ASINs são "Genérico" e não podem ser reetiquetados), na **categoria/browse node correto**, aproveitando a recriação para **agrupar variações por tamanho** e **corrigir categorizações erradas** — sem destruir histórico de venda/ranking no caminho.

---

## 1. Por que a migração é necessária (não é opcional)

- **Brand Registry `WINNET METAIS` aprovado** (caso 21786840981, 01/09) — mas o atributo de marca de um ASIN cadastrado como **"Genérico" NÃO pode ser alterado** (suporte, caso 21821042531). Trocar marca **exige ASIN novo**.
- **Consequência:** A+, Avaliações de clientes, Brand Analytics e Sponsored Brands **não operam** sobre o catálogo atual. Hoje o Brand Registry entrega só **proteção de nome**. Único caminho para destravar tudo isso: **recriar os anúncios sob a marca**.
- **Estado do catálogo (Relatório de Todas as Ofertas, 01/09):** nenhum EAN existe (114 linhas com `product-id-type = 1` = próprio ASIN); **sem variações pai/filho** — 114 páginas isoladas competindo entre si sem seletor concentrando sessões.

---

## 2. O GATE — identificador + marca gravada no produto

### 2.1 Caminho do identificador (decisão do LEO, 17/09)

**1º Isenção de GTIN · 2º (se não sair) EAN próprio via GS1.**

| | Isenção de GTIN | EAN via GS1 |
|---|---|---|
| Falta | mudar a **gravação na produção** para `WINNET METAIS` | **1 documento** (Faturamento Fiscal) + 1–2 dias úteis |
| Passa pela revisão de imagem que barrou em 14/09? | **Sim** (foi onde travou) | **Não** — cria o ASIN da marca direto |
| Vale onde | só Amazon | **todos os canais** + resolve NF (`cEAN`) e código de barras |
| Sobrevive se o INPI negar a marca | **Não** (cai com o Brand Registry) | **Sim** |

### 2.2 ⚠️ O gate real não é a fila da Amazon — é a marca física

A isenção **foi RECUSADA em 14/09** por **imagens fora dos requisitos**. Causa raiz: **três grafias divergentes** —

| Onde | Grafia |
|---|---|
| Produto que embarca (estoque atual) | **Winnet Home & Pro** (adesivo) |
| Amostra fotografada (gravada no inox) | **WIN NET METAIS** |
| Brand Registry / solicitação | **WINNET METAIS** (tudo junto) |

A Amazon exige correspondência **exata** entre a marca da solicitação e a marca afixada na unidade fotografada. Portanto:

- **NÃO reenviar a isenção** enquanto a unidade que embarca não sair com `WINNET METAIS`. Reenviar com a amostra é risco de integridade de marca (INPI em oposição) e só toma outra recusa.
- Gatilho de "aprovado" na isenção = **gravação `WINNET METAIS` na produção → fotografar a unidade que embarca (6 lados + embalagem, foto real) → reenviar**.
- O **GS1 é o plano B mais rápido** justamente porque **pula** essa revisão de imagem — mas a gravação correta **continua obrigatória** por integridade de marca, NF e outros canais.

### 2.3 Ações abertas do gate (Wintech/Dianna)

1. [ ] Gravação `WINNET METAIS` no inox **vai para a produção — quando?** (define o cronograma da migração, não a Amazon)
2. [ ] O adesivo `Winnet Home & Pro` **sai de linha junto?** (conviverem no mesmo produto é pior que uma grafia errada só)
3. [ ] Adesivo novo: decidir **com/sem código de barras antes de imprimir** (sem GS1 não há código; reimpressão da grafia é necessária em qualquer cenário)

---

## 3. Categorização — para onde vão as lixeiras

### 3.1 Browse node confirmado (LEO leu o breadcrumb ao vivo, 17/09 — confiança ALTA)

```
Casa (16191000011)
 └─ Organização e Armazenamento (17100533011)
     └─ Lixo e Reciclagem (17100596011)   ← TODAS as lixeiras classificam aqui, inclusive as de pedal
```

Filhos existentes (para refino fino, se necessário): **Lixeiras de Cozinha** `17100879011` · **Lixeiras Externas** `17100880011`.
Os líderes de venda (pedal/inox/soft-close) são o espelho direto das linhas L-family e P30xx da Winnet.

### 3.2 Product type = HOME (decisão do LEO, 17/09)

- **Product type escolhido ao criar o anúncio: `HOME`** — **substitui `TRASH_CAN`** (LEO confirmou na Amazon que TRASH_CAN sai e HOME é o tipo vigente). Os docs antigos que citavam `TRASH_CAN` ficam **superados** por esta decisão.
- **Departamento que o cliente vê (varejo):** **Casa** — é o "HOME" que o LEO observou. ✅
- ⚠️ **Checkpoint no cadastro:** dentro do product type `HOME`, apontar o **browse node recomendado = `17100596011`** (Lixo e Reciclagem) via atributo, para o produto **cair no galho das lixeiras** e não num nó genérico de Casa. Confirmar na tela.

### 3.3 ⚠️ CORREÇÃO (Relatório por Categoria, 17/09) — o erro NÃO era MOUNT_BRACKET

O relatório de categoria (com o `product_type` real por SKU) **desmente a premissa do checklist de isenção**. Product type **ATUAL confirmado por dado** (112 SKUs reais + 1 linha-exemplo `ABC123` do template, ignorada):

| Product type atual | Qtd | Comentário |
|---|--:|---|
| `TRASH_CAN` | 85 | inclui **as 26 lixeiras com pedal** — **NÃO** estão em MOUNT_BRACKET |
| `HOME` | 12 | lixeiras já em HOME → a inconsistência é essa (mesmo produto em 2 tipos) |
| `CLOTHES_RACK` | 8 | porta guarda-chuva + EGC (coerente) |
| `ASHTRAY` | 5 | cinzeiro-lixeira + bitucas (coerente) |
| `MOUNT_BRACKET` | 2 | **só PXM e PXP** (suporte de extintor — correto) |

**Consequências:**
- **A tese "P30xx são MOUNT_BRACKET" estava ERRADA** (veio do checklist de isenção, que já pedia "confirmar"). Os pedal são `TRASH_CAN`; **não há MOUNT_BRACKET a corrigir neles**. Se a *isenção* foi pedida em MOUNT_BRACKET, foi categoria errada **no pedido** — o anúncio em si é TRASH_CAN.
- **O trabalho real de categoria é outro:**
  1. **Consolidar `TRASH_CAN` (83 lixeiras) → `HOME`**, junto das 11 já em HOME (decisão do LEO §3.2).
  2. **Puxar 13 lixeiras que estão na árvore de INDÚSTRIA de volta para Casa** (`17100596011`) — ver §10. São pedal grandes (65–120 L). Uma (P4070RA) está sob *"Resíduos Risco Biológico"*.
  3. Padronizar o browse: mesmo entre as de Casa há 3 sub-nós diferentes (Lixeiras de Cozinha, Lixo e Reciclagem, e o L1618-T em *Casa > Banho > Lixeiras*).
- Tudo isso entra na **criação do ASIN novo** sob WINNET METAIS; o ASIN "Genérico" atual não é reetiquetado. Ação do LEO no console — este repo **não executa** (§1).

---

## 4. Piloto — quem vai primeiro

**Regra:** começar por quem tem **menos a perder** (histórico de venda/ranking) e provar o fluxo antes de escalar.

**Piloto definido na pendência 7:** **P3060 + P3050** (+**P4080** opcional).
Vantagem dupla: são lixeiras com pedal mal classificadas → o piloto **conserta a categoria**, **mira o node `17100596011`** e **pede a isenção da categoria de lixeira** (que cobre todas as lixeiras) num movimento só.

> ✅ **DIVERGÊNCIA RESOLVIDA (LEO, 17/09): confiar no `Livro_Vendas`.** P3050 (vendas 29/06 e 09/07) e P3060 (08/08 ×2) **TÊM vendas reais** — a descrição "zero venda" da pendência 7 fica **superada**. Consequência assumida: migrar esses SKUs **perde o histórico/ranking** do ASIN antigo (a Era pré-migração não é comparável — passo 5). LEO opta por seguir mesmo assim, priorizando a correção de marca + categoria. ⚠️ **Registrar a Era de cada um antes de migrar**, para leitura pós-corte.

**Fora do piloto:** L2025-T e L1618-T (vendem orgânico), P3070 (PI ativa, converteu). **Nunca** SP-01/SP-T (excluídos — histórico de política de fumo).

---

## 5. Procedimento de migração por SKU (sequência obrigatória — pendência 7)

⚠️ **"Excluir os antigos" = ENCERRAR, não deletar.** Deletar ASIN gera problema (detecção de duplicado, dado órfão). Encerrar mantém o ASIN antigo no catálogo.

1. **Criar o ASIN novo** sob `WINNET METAIS` (com EAN se via GS1; sem product-id se via isenção), no product type que aterrissa em `17100596011`, e **publicar/ativar**.
2. **Conferir** que o novo está vivo, indexado e comprável.
3. **Só então encerrar a oferta antiga** (encerrar ≠ excluir).
4. **Trocar o produto no grupo de anúncios** para o ASIN novo.
5. **Marcar o corte de série** na base: Era pré e pós-migração **não são comparáveis** por SKU migrado.
6. **Nunca** deixar um intervalo em que nem o novo nem o antigo estejam compráveis.

---

## 6. Variação por tamanho (o "buy box" do print — na verdade **variação pai/filho**)

- **Correção de nome:** o print da Tramontina (Tamanho: 3L/5L/12L/20L/30L num seletor) é **variação pai/filho por tamanho**, não Buy Box. A Buy Box da conta já está em **99,21%** — não é gargalo.
- **Só existe sob a marca** — por isso depende da migração. ASINs "Genérico" não se agrupam retroativamente; a variação nasce com os ASINs novos.
- Monta-se um **pai** (tema = Tamanho) e penduram-se os **filhos** (cada SKU da família).
- **Remédio direto de devolução por tamanho:** os casos recentes L2030-T (20×30, "muito pequeno") e L1618-T voltaram por descompasso de tamanho. Com a família no mesmo seletor, o cliente que precisa de maior **se autoseleciona** antes de comprar → menos devolução, ticket maior.
- **Única janela sem custo extra** para fazer isso (recria-se o catálogo uma vez).

---

## 7. Fotos — produto em uso / pedal / escala

- ASIN novo sob a marca destrava **Conteúdo A+** e um set de imagem decente (hoje "Genérico", sem A+).
- Ordem sugerida por foto: **principal fundo branco** (compliance) → **em uso (pedal acionado)** → **referência de escala** (mão/objeto comum ao lado — ataca o "muito pequeno") → **imagem com medidas** → **comparação de tamanhos da variação**.
- ⚠️ **Restrição dura:** as fotos têm de ser da **unidade que embarca** com a marca correta (foi o que barrou a isenção). Preservar as características reais do produto (CLAUDE.md §11) — não alterar geometria; se usar IA, prompt em PT dizendo o que **não** muda.

---

## 8. O que a migração NÃO resolve (registrado, decisão tomada com isto ciente)

| Item | Situação |
|---|---|
| **NF — campo `cEAN`** | A isenção não gera GTIN → campo segue sem código. Aberto com contabilidade/ERP. Só o GS1 resolve. |
| **Código de barras no adesivo** | Reimpressão com grafia `WINNET METAIS` é necessária; o código de barras só existe com GS1. |
| **Mercado Livre e outros canais** | A isenção vale só na Amazon. Sem identificador próprio fora dela. |
| ⚠️ **Acoplamento ao INPI 944049613 (em oposição)** | A isenção é por marca. Se a marca for negada e o Brand Registry cair, a **isenção cai junto** (ASINs novos sem identificador e sem marca). O EAN da GS1 sobreviveria. Manter Jair Silva de Andrade ativo até a concessão. |

---

## 9. Pendências que destravam o plano (para o LEO / Wintech / Dianna)

1. [x] ~~Relatório de Ofertas + Category Report~~ — **AMBOS RECEBIDOS 17/09.** Mapa completo (com categoria atual) em `dados/MAPA_MIGRACAO_SKUS.csv`.
2. [x] ~~Product type~~ — **DECIDIDO: `HOME`** (consolida as 83 lixeiras em TRASH_CAN + 11 já HOME). Falta confirmar na tela o **nome exato da categoria na solicitação de isenção** e apontar o browse node `17100596011`.
3. [ ] **Gravação `WINNET METAIS` na produção** — data (Wintech). É o caminho crítico da isenção.
4. [ ] **Adesivo antigo** sai de linha? Com/sem código de barras? (Wintech/Dianna)
5. [x] ~~Reconciliar histórico do piloto~~ — **RESOLVIDO: confiar no Livro_Vendas, P3050/P3060 têm venda (§4).**
6. [ ] **Desenho da variação** — por tamanho, por acabamento, ou dois níveis? Qual família estreia (§10 sugere 20x30)?
7. [ ] **Categoria dos 18 não-lixeira** — já estão coerentes (guarda-chuva=CLOTHES_RACK, cinzeiro/bitucas=ASHTRAY, extintor=MOUNT_BRACKET). Confirmar se **mantém** ou se algum entra no plano de marca. SP-01/SP-T não migram.
8. [ ] **Consolidar categoria das lixeiras na migração:** 83 `TRASH_CAN` → `HOME`; **13 da árvore Indústria → Casa `17100596011`**; padronizar sub-nó (L1618-T está em Banho). Ação do LEO no console, na criação do ASIN novo.

---

## 10. Mapa por SKU — CONSTRUÍDO (Relatório de Ofertas Ativas, 17/09)

Fontes: `Relatório de Ofertas Ativas 17/09` (SKU/ASIN/título) **+** `Relatório de produtos à venda por categoria 17/09` (product_type + browse node reais). Mapa completo por SKU em **`dados/MAPA_MIGRACAO_SKUS.csv`** (agora com `categoria_atual` + `browse_atual`).

✅ **Categoria atual CONFIRMADA** (não é mais inferência). Ver a correção da §3.3: os pedal são `TRASH_CAN`, não MOUNT_BRACKET. *(Nota: `PQ-3060` não veio neste arquivo de categoria — `categoria_atual` fica vazia pra ele até um export que o inclua.)*

### ⚠️ Achado forte — 13 lixeiras fora da árvore de Casa

Estão hoje em **Indústria e Comércio > … > Latas de Lixo** (ou pior), **fora** da prateleira das mais vendidas (Casa). São os pedal grandes:

`P3050ALC · P3060ALC · P3070ALC · P4050 · P4050ALC · P4060ALC · P4070 · P4070ALC · P4070RA · P4075 · P4075ALC · P4080ALC · P4090ALC`
(P4070RA está sob *"Resíduos Risco Biológico"*.) **Todas devem ir para `17100596011` na migração.** Também: **L1618-T** (campeão de tráfego) está em *Casa > Banho > Lixeiras*, sub-nó diferente do resto.

### Resumo por família

| Família | Qtd | Node-alvo | Observação |
|---|---:|---|---|
| **LIXEIRA** (aro/basculante/tampa/embutir/quadrada) | 68 | `17100596011` (HOME) | o grosso — uma isenção HOME cobre |
| **LIXEIRA c/ pedal** (P30xx/P40xx, PQ) | 27 | `17100596011` (HOME) | hoje `TRASH_CAN` (não MOUNT_BRACKET); 13 estão na árvore Indústria |
| **Porta guarda-chuva** (PG, EGC) | 8 | node **próprio a pesquisar** | **não é lixeira** — não vai p/ HOME automaticamente |
| **Coletor de bitucas** (SP-01/-FF/-PP/-T) | 4 | a decidir | **SP-01 e SP-T NÃO migram** (fumo, caso 21652133321) |
| **Cinzeiro-Lixeira** (L2450--CZ, L2460-CZ, L2470-CZ) | 3 | a decidir | ASHTRAY vs lixeira |
| **Suporte extintor** (PXM, PXP) | 2 | `MOUNT_BRACKET` | **provavelmente já correto — NÃO é o erro** |
| **Coletor de pilhas** (L2460-CP) | 1 | confirmar (reciclagem) | — |
| **Total** | **113** | | **95 lixeiras** → HOME · **18 não-lixeira** → decisão própria |

### ⚠️ O que o relatório de categoria corrigiu

1. **Os pedal são `TRASH_CAN`, não `MOUNT_BRACKET`** (ver §3.3). O "mudar MOUNT_BRACKET" partiu de premissa errada do checklist de isenção. Só **PXM/PXP** são MOUNT_BRACKET (corretos).
2. **O trabalho real:** consolidar 83 lixeiras `TRASH_CAN` → `HOME` + puxar as **13 da árvore Indústria** para Casa + padronizar o sub-nó de Casa.
3. **Nem tudo vai para HOME:** os 18 não-lixeira já estão em categorias coerentes (guarda-chuva=`CLOTHES_RACK`, cinzeiro/bitucas=`ASHTRAY`, extintor=`MOUNT_BRACKET`). "Lixeiras → HOME" vale para as 95 lixeiras, não para o catálogo inteiro.

### Variação — DOIS eixos (decisão de desenho)

Os títulos já trazem litros + medida. Há duas maneiras de agrupar (a definir):
- **Por TAMANHO** (como o print da Tramontina): 16x18 (3L) → 40x90 (120L).
- **Por ACABAMENTO dentro de um tamanho**: cada medida tem 2–4 variações (ex.: 20x30 = L2030 s/ tampa · -A aro · -B basculante · -T c/ tampa).

Decidir se a variação-pai é **por tamanho**, **por acabamento**, ou **dois níveis**. Recomendação preliminar (confiança MÉDIA): estrear **por acabamento dentro de um tamanho quente** (ex.: família 20x30 — a das devoluções do L2030-T), que é o caso onde o cliente troca "sem tampa/com tampa" e onde a devolução por tamanho aparece.

---

## 11. Confiança e fontes

- **Browse node `17100596011` (Casa → Organização e Armazenamento → Lixo e Reciclagem):** ALTA — breadcrumb lido ao vivo pelo LEO em 17/09; node IDs conferem com URLs canônicas da Amazon.
- **Product type = `HOME`** (substitui TRASH_CAN): decisão do LEO (17/09) confirmada na Amazon. Checkpoint: apontar browse node `17100596011` no cadastro.
- **Classificação de família (95 lixeiras × 18 não-lixeira):** ALTA — títulos do Relatório de Ofertas 17/09.
- **Categoria ATUAL por SKU:** ✅ **CONFIRMADA (ALTA)** — `product_type` real do Relatório de produtos à venda por categoria 17/09 (85 TRASH_CAN · 12 HOME · 8 CLOTHES_RACK · 5 ASHTRAY · 2 MOUNT_BRACKET). **Corrige** a tese "pedal = MOUNT_BRACKET" (era falsa). Exceção: `PQ-3060` não veio no arquivo.
- **Piloto tem histórico de venda:** confirmado — Livro_Vendas (§4). Migrar perde o histórico do ASIN antigo (custo assumido).

Fontes: Relatório de Ofertas Ativas 17/09 + Relatório de produtos à venda por categoria 17/09 (consolidados em `dados/MAPA_MIGRACAO_SKUS.csv`) · nós de navegação Amazon BR `16191000011` · `17100533011` · `17100596011` · `17100879011` · `17100880011`.

---

**Próximo passo:** decidir o desenho da variação (§9.6) e a estratégia dos 18 não-lixeira (§9.7); confirmar o nome da categoria na isenção (§9.2). O mapa por SKU (§10) está completo — insumo pronto para a O6 (22/09).
