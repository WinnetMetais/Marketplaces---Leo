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

### 3.2 "HOME" × "TRASH_CAN" — não é conflito, são camadas

- **Departamento que o cliente vê (varejo):** **Casa** — é o "HOME" que o LEO observou. ✅
- **Product type escolhido ao criar o anúncio (Seller Central):** o tipo que **aterrissa** o produto em *Lixo e Reciclagem* — os docs registram `TRASH_CAN`. ⚠️ **A confirmar no cadastro** (não marcar um product type "HOME" genérico, sob risco de cair fora do galho das lixeiras).

### 3.3 ⚠️ Categoria errada confirmada — P30xx/P40xx

**P3050 / P3060 / P3070 / P4080 são lixeiras com pedal** (confirmado pelo LEO, 17/09) mas estão listadas como **`MOUNT_BRACKET`** (suporte). É miscategorização — um dos casos de "categoria errada". A migração é o momento de corrigir: recriá-las no galho de lixeira (`17100596011`).

---

## 4. Piloto — quem vai primeiro

**Regra:** começar por quem tem **menos a perder** (histórico de venda/ranking) e provar o fluxo antes de escalar.

**Piloto definido na pendência 7:** **P3060 + P3050** (+**P4080** opcional).
Vantagem dupla: são lixeiras com pedal mal classificadas → o piloto **conserta a categoria**, **mira o node `17100596011`** e **pede a isenção da categoria de lixeira** (que cobre todas as lixeiras) num movimento só.

> ⚠️ **DIVERGÊNCIA A RECONCILIAR (auditar).** A pendência 7 chama o piloto de "**zero venda, nada de histórico a destruir**". Mas o `Livro_Vendas`/`PROPOSTA_CONCENTRACAO_O5` registram **vendas reais** de P3050 (29/06, 09/07) e P3060 (08/08 ×2). Se esses SKUs **têm** histórico, o argumento "nada a destruir" enfraquece. **Antes de mover o piloto, confirmar:** (a) esses SKUs têm ranking/vendas orgânicas ativas? (b) se sim, vale começar por um SKU realmente sem histórico? Não tratar como zero-histórico sem essa checagem.

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

1. [ ] **Relatório de Todas as Ofertas** (All Listings Report) — `product-type` por SKU → base do mapa **SKU → categoria atual → node-alvo → isenção necessária**.
2. [ ] **Nome exato da categoria** que a Amazon usa na solicitação de isenção (confirmar na tela — não presumir "HOME").
3. [ ] **Gravação `WINNET METAIS` na produção** — data (Wintech).
4. [ ] **Adesivo antigo** sai de linha? Com/sem código de barras? (Wintech/Dianna)
5. [ ] **Reconciliar histórico de venda do piloto** P3050/P3060 (item ⚠️ da seção 4).
6. [ ] **Qual família de lixeira estreia a variação** — L1618 ou L2030 (as das devoluções)?

---

## 10. Mapa por SKU — A CONSTRUIR

> Preenchido quando chegar o **Relatório de Todas as Ofertas** (pendência 9.1). Coluna nova na base (sem tocar na estrutura da Mestra sem diagnóstico prévio — CLAUDE.md §10).

| SKU | Produto | Categoria atual | Node-alvo | Isenção (categoria) | Variação (família) | Ordem |
|---|---|---|---|---|---|---|
| _(pendente do relatório)_ | | | | | | |

---

## 11. Confiança e fontes

- **Browse node `17100596011` (Casa → Organização e Armazenamento → Lixo e Reciclagem):** ALTA — breadcrumb lido ao vivo pelo LEO em 17/09; node IDs conferem com URLs canônicas da Amazon.
- **Product type = `TRASH_CAN`:** MÉDIA — asserção dos docs internos; confirmar no cadastro/fluxo de isenção.
- **P30xx/P40xx = lixeira com pedal, hoje `MOUNT_BRACKET`:** ALTA (confirmado pelo LEO) para "é lixeira"; a classificação atual `MOUNT_BRACKET` vem do checklist de isenção e deve ser reconferida no Relatório de Ofertas.
- **Piloto sem histórico:** BAIXA — diverge do Livro_Vendas (ver §4). Reconciliar.

Fontes externas (Amazon BR): nós de navegação `16191000011` · `17100533011` · `17100596011` · `17100879011` · `17100880011`.

---

**Próximo passo:** LEO traz o Relatório de Todas as Ofertas → montamos a seção 10 (mapa por SKU) → o plano vira insumo pronto da O6 (22/09).
