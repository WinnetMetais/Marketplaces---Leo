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

### 3.3 ⚠️ Categoria errada confirmada — P30xx/P40xx

**P3050 / P3060 / P3070 / P4080 são lixeiras com pedal** (confirmado pelo LEO, 17/09) mas estão listadas como **`MOUNT_BRACKET`** (suporte). É miscategorização — um dos casos de "categoria errada". A migração é o momento de corrigir: recriá-las no galho de lixeira (`17100596011`).

> **Decisão do LEO (17/09): corrigir a categoria desses P30xx/P40xx de `MOUNT_BRACKET` → `HOME` (node `17100596011`).** A correção entra na **criação do ASIN novo** sob WINNET METAIS; o ASIN "Genérico" atual **não é reetiquetado** (trocar marca exige ASIN novo). A ação é do LEO no console — este repo **não executa** (trava §1). A definir: vale um **conserto interino** da categoria na oferta atual antes da migração, ou espera o ASIN novo?

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

1. [x] ~~Relatório de Ofertas~~ — **RECEBIDO 17/09.** Mapa em `dados/MAPA_MIGRACAO_SKUS.csv`. **Falta o Category/Inventory Report** com o `product-type` por SKU para confirmar a **categoria atual** (quais estão de fato em MOUNT_BRACKET).
2. [x] ~~Product type~~ — **DECIDIDO: `HOME`** (substitui TRASH_CAN). Falta confirmar na tela o **nome exato da categoria na solicitação de isenção** e apontar o browse node `17100596011`.
3. [ ] **Gravação `WINNET METAIS` na produção** — data (Wintech). É o caminho crítico da isenção.
4. [ ] **Adesivo antigo** sai de linha? Com/sem código de barras? (Wintech/Dianna)
5. [x] ~~Reconciliar histórico do piloto~~ — **RESOLVIDO: confiar no Livro_Vendas, P3050/P3060 têm venda (§4).**
6. [ ] **Desenho da variação** — por tamanho, por acabamento, ou dois níveis? Qual família estreia (§10 sugere 20x30)?
7. [ ] **Categoria dos 18 não-lixeira** — node do porta guarda-chuva (8); cinzeiro-lixeira ASHTRAY vs lixeira (3); bitucas (SP-FF/SP-PP migram? SP-01/SP-T não) (4); coletor de pilhas (1). PXM/PXP ficam em MOUNT_BRACKET.
8. [ ] **Corrigir MOUNT_BRACKET → HOME** dos 27 pedal (P30xx/P40xx) — ação do LEO no console, na criação do ASIN novo (ou interino, a decidir).

---

## 10. Mapa por SKU — CONSTRUÍDO (Relatório de Ofertas Ativas, 17/09)

Fonte: `Relatório de Ofertas Ativas 17/09` (113 SKUs, todos `product-id-type=1`/sem EAN, todos FBM). Mapa completo por SKU em **`dados/MAPA_MIGRACAO_SKUS.csv`** (SKU · família · litros · medida · preço · ASIN · node-alvo · migra · obs · título).

⚠️ **Limite deste relatório:** ele **não traz a coluna de product-type** (categoria atual na Amazon). A família abaixo foi classificada **pelo título** (confiança ALTA). Para confirmar a **categoria atual** por SKU (ex.: quais estão de fato em `MOUNT_BRACKET`) é preciso o **Category/Inventory Report** com product-type — ainda pendente.

### Resumo por família

| Família | Qtd | Node-alvo | Observação |
|---|---:|---|---|
| **LIXEIRA** (aro/basculante/tampa/embutir/quadrada) | 68 | `17100596011` (HOME) | o grosso — uma isenção HOME cobre |
| **LIXEIRA c/ pedal** (P30xx/P40xx, PQ) | 27 | `17100596011` (HOME) | **é aqui o "mudar MOUNT_BRACKET"** |
| **Porta guarda-chuva** (PG, EGC) | 8 | node **próprio a pesquisar** | **não é lixeira** — não vai p/ HOME automaticamente |
| **Coletor de bitucas** (SP-01/-FF/-PP/-T) | 4 | a decidir | **SP-01 e SP-T NÃO migram** (fumo, caso 21652133321) |
| **Cinzeiro-Lixeira** (L2450--CZ, L2460-CZ, L2470-CZ) | 3 | a decidir | ASHTRAY vs lixeira |
| **Suporte extintor** (PXM, PXP) | 2 | `MOUNT_BRACKET` | **provavelmente já correto — NÃO é o erro** |
| **Coletor de pilhas** (L2460-CP) | 1 | confirmar (reciclagem) | — |
| **Total** | **113** | | **95 lixeiras** → HOME · **18 não-lixeira** → decisão própria |

### ⚠️ Correção que o relatório trouxe

1. **O erro `MOUNT_BRACKET` é só das lixeiras com pedal (P30xx/P40xx)** — os títulos confirmam "Lixeira ... com Pedal". **PXM e PXP são suportes de extintor de verdade** → `MOUNT_BRACKET` está **certo** neles. A correção NÃO os inclui.
2. **Nem tudo vai para HOME:** 18 SKUs (guarda-chuva, extintor, bitucas, cinzeiro, pilhas) têm categoria própria. "Todas as lixeiras → HOME" vale para as **95 lixeiras**, não para o catálogo inteiro.

### Variação — DOIS eixos (decisão de desenho)

Os títulos já trazem litros + medida. Há duas maneiras de agrupar (a definir):
- **Por TAMANHO** (como o print da Tramontina): 16x18 (3L) → 40x90 (120L).
- **Por ACABAMENTO dentro de um tamanho**: cada medida tem 2–4 variações (ex.: 20x30 = L2030 s/ tampa · -A aro · -B basculante · -T c/ tampa).

Decidir se a variação-pai é **por tamanho**, **por acabamento**, ou **dois níveis**. Recomendação preliminar (confiança MÉDIA): estrear **por acabamento dentro de um tamanho quente** (ex.: família 20x30 — a das devoluções do L2030-T), que é o caso onde o cliente troca "sem tampa/com tampa" e onde a devolução por tamanho aparece.

---

## 11. Confiança e fontes

- **Browse node `17100596011` (Casa → Organização e Armazenamento → Lixo e Reciclagem):** ALTA — breadcrumb lido ao vivo pelo LEO em 17/09; node IDs conferem com URLs canônicas da Amazon.
- **Product type = `HOME`** (substitui TRASH_CAN): decisão do LEO (17/09) confirmada na Amazon. Checkpoint: apontar browse node `17100596011` no cadastro.
- **Classificação de família (95 lixeiras × 18 não-lixeira):** ALTA — pelos títulos do Relatório de Ofertas 17/09.
- **Categoria ATUAL por SKU (ex.: quais em MOUNT_BRACKET):** PENDENTE — não vem no Relatório de Ofertas; precisa do Category/Inventory Report. A miscategorização dos pedal vem do checklist de isenção + confirmação do LEO de que são lixeiras.
- **Piloto tem histórico de venda:** confirmado — Livro_Vendas (§4). Migrar perde o histórico do ASIN antigo (custo assumido).

Fontes: Relatório de Ofertas Ativas 17/09 (`dados/MAPA_MIGRACAO_SKUS.csv`) · nós de navegação Amazon BR `16191000011` · `17100533011` · `17100596011` · `17100879011` · `17100880011`.

---

**Próximo passo:** LEO traz o Relatório de Todas as Ofertas → montamos a seção 10 (mapa por SKU) → o plano vira insumo pronto da O6 (22/09).
