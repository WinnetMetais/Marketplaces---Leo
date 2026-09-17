# RUNBOOK — Piloto de Migração + Variação (família pitão)

**Criado:** 17/09/2026 · **Autor:** Claude Code · **Executor:** LEO (no console)
**Objetivo:** migrar a família **Com Tampa / pitão** (4 tamanhos) de Genérico → **WINNET METAIS**, já montando a **variação por tamanho**. É o ensaio que prova o fluxo inteiro.

> ⚠️ **Trava (CLAUDE.md §1):** este runbook é **recomendação**. Cada passo é executado **pelo LEO no console**, sob sua conferência. O repo não executa nada na Amazon.
> Pré-requisito de todos os passos: **a unidade que embarca precisa sair com a marca `WINNET METAIS` gravada** + identificador resolvido (isenção aprovada **ou** EAN GS1). Sem isso, não começa.

---

## Os 4 filhos da família

| SKU (novo) | Tamanho | Medida | Preço | ASIN Genérico atual (a encerrar) | Cat. atual |
|---|---|---|---|---|---|
| L1618-T | 3 L | 16×18 cm | R$ 116,00 | B0H3QQLFFY | TRASH_CAN |
| L1623-T | 5 L | 16×23 cm | R$ 123,93 | B0H6C894TV | TRASH_CAN |
| L2025-T | 7 L | 20×25 cm | R$ 132,90 | B0H6C5CTSC | TRASH_CAN |
| L2030-T | 10 L | 20×30 cm | R$ 143,13 | B0H77661G6 | TRASH_CAN |

**Pai (novo, não comprável):** ex. SKU `WN-LIX-TAMPA` · título "Lixeira Inox com Tampa para Banheiro e Cozinha" · **tema de variação = Tamanho**.

> ⚠️ **Olho aberto (risco já aceito por você):** o **L1618-T** é o campeão de tráfego (~37 sessões/sem) e o **L2025-T** já vendeu (4×). Migrar cria ASIN novo **zerado** de histórico/ranking. O ganho (marca + A+ + variação + fim da dispersão) foi julgado maior — mas **registre a Era de cada um antes** (passo 6).

---

## FASE 0 — Preparação (antes de tocar no console)

Montar, para cada um dos 4, o pacote de dados:

- [ ] **Título** no padrão (marca WINNET METAIS + tipo + litros + medida). Ex.: *"Lixeira Inox com Tampa 10L 20×30cm WINNET METAIS para Banheiro e Cozinha"*.
- [ ] **5 bullets** (com **litros + medida em destaque** — é o que evita a devolução por tamanho).
- [ ] **Imagens da unidade que embarca** (marca `WINNET METAIS` visível): principal fundo branco + em uso + **referência de escala** (mão/objeto) + foto com as medidas.
- [ ] **Preço** e **estoque** por filho (tabela acima).
- [ ] **Identificador:** EAN (GS1) por filho **ou** isenção aprovada para a categoria HOME.
- [ ] **Palavras-chave** de backend.

---

## FASE 1 — Criar os 4 ASINs filhos (sob WINNET METAIS)

Para **cada** um dos 4:

1. [ ] **Catálogo → Adicionar produtos**.
2. [ ] Buscar por identificador: se **isenção**, escolher *"Não tenho um ID de produto"* (GTIN exemption na categoria HOME); se **GS1**, informar o **EAN**.
3. [ ] **Marca = `WINNET METAIS`** (exatamente, do Brand Registry). Nunca "Genérico".
4. [ ] **Tipo de produto (product type) = `HOME`**.
5. [ ] **Browse node recomendado = `17100596011`** (Casa › Organização e Armazenamento › Lixo e Reciclagem). ⚠️ conferir na tela — não deixar cair em nó genérico de Casa.
6. [ ] Preencher título, bullets, imagens, preço, estoque, keywords (Fase 0).
7. [ ] **Publicar.** Anotar o **ASIN novo** gerado.
8. [ ] Esperar ~30 min (se veio de isenção recém-aprovada) antes de seguir.

**Saída da Fase 1:** 4 anúncios novos, branded, **cada um independente** — 4 páginas separadas, cada uma comprável, com seu ASIN/preço/estoque/foto. **Ainda NÃO há variação.** É o estado esperado. A variação vem na Fase 2.

> **💡 Como funciona o pai/filho (leia antes da Fase 2)**
> - Você **cria os 4 normalmente e separados** (Fase 1). Só depois **associa** eles (Fase 2).
> - O **"pai"** NÃO é um 5º produto que você fabrica ou vende. É uma **capa/guarda-chuva virtual** que a Amazon cria pra segurar os 4 juntos e mostrar o **seletor de tamanho**. O pai **não tem preço nem estoque** e **ninguém compra o pai**.
> - Os **"filhos"** são os 4 tamanhos reais (é o que vende). Cada um **mantém** seu ASIN, preço, estoque e fotos.
> - **Associar** = dizer à Amazon: *"esses 4 são o mesmo produto em tamanhos diferentes"*. As 4 páginas viram **uma só** com o seletor 3/5/7/10 L, e as **avaliações se juntam**.
> - Deu problema na associação? Os 4 continuam vivos e compráveis sozinhos — corrige e associa de novo, **sem perder nada**.

---

## FASE 2 — Associar os 4 numa variação (criar o pai e pendurar os filhos)

Aqui você pega os **4 que já existem** (Fase 1) e cria a relação. Dois caminhos — escolher **um**.

### Caminho A — pela interface (mais simples p/ 1 família)

1. [ ] Abrir **um** dos 4 anúncios em **Gerenciar Estoque → Editar**.
2. [ ] Procurar **"Variações"** / **"Adicionar uma variação"**.
3. [ ] Escolher o **tema de variação = Tamanho (Size)**.
4. [ ] A Amazon **cria o pai automaticamente** (a capa) e pede os valores de tamanho: informar **3 L, 5 L, 7 L, 10 L**.
5. [ ] **Vincular cada tamanho ao SKU/ASIN filho** correspondente (o L1618-T no 3L, o L1623-T no 5L, etc.) — é aqui que os 4 independentes entram como filhos.
6. [ ] **Salvar.** Esperar processar.

### Caminho B — pelo arquivo de categoria (o mesmo .xlsm que você baixou)

Na aba **Modelo**, uma linha para o pai + editar as 4 linhas dos filhos:
- [ ] **Linha nova do pai:** `product_type = HOME` · SKU do pai (ex. `WN-LIX-TAMPA`) · **sem preço, sem estoque** · `parentage = parent` (Pai) · `variation_theme = Size` (Tamanho).
- [ ] **Nas 4 linhas dos filhos** (os SKUs que você já criou): `parentage = child` (Filho) · `parent_sku = WN-LIX-TAMPA` · `relationship_type = variation` (Variação) · e o **tamanho** de cada um (3L/5L/7L/10L) no campo Tamanho.
- [ ] Enviar em **Catálogo → Enviar seu estoque / Adicionar produtos via upload** e conferir o relatório: **0 erros**.

> Os dois caminhos fazem a **mesma coisa**: criam o pai (capa) e marcam os 4 como filhos por tamanho. O Caminho A é clicando; o B é planilha (melhor quando for repetir em várias famílias).

**Saída da Fase 2:** uma página única com **seletor de Tamanho (3/5/7/10 L)**, os 4 compráveis por dentro, avaliações somadas.

---

## FASE 3 — Conferir (não pular)

- [ ] A página do **pai** mostra o **seletor de tamanho** com os 4, cada um **comprável**.
- [ ] Preço e imagens corretos **por tamanho**.
- [ ] **Breadcrumb** = Casa › Organização e Armazenamento › Lixo e Reciclagem (`17100596011`).
- [ ] **Marca = WINNET METAIS**; **A+** e Sponsored Brands agora **disponíveis**.
- [ ] Busca pelo título **encontra** o novo (indexado).

Só avança com tudo verde.

---

## FASE 4 — Encerrar os Genéricos antigos (⚠️ ENCERRAR, não excluir)

Só **depois** da Fase 3 confirmada:

1. [ ] **Gerenciar Estoque** → localizar os 4 ASINs Genéricos (B0H3QQLFFY, B0H6C894TV, B0H6C5CTSC, B0H77661G6).
2. [ ] Em cada um: **Encerrar oferta / Fechar** (Close listing). **NÃO** "Excluir".
3. [ ] Conferir que ficaram **Inativos/Encerrados** (o ASIN permanece no catálogo).

Nunca deixar um intervalo em que **nem** o novo **nem** o antigo estejam compráveis.

---

## FASE 5 — Trocar no grupo de anúncios (Ads) — RECOMENDAR

⚠️ Mexer em Ads é **trava dura** — aqui **só recomendação**, execução sua e registrada.

- [ ] Nas campanhas onde o SKU antigo era anunciado, **trocar o produto anunciado** pelo **ASIN novo**.
- [ ] Não criar campanha nova nem alterar lance nesse passo — só a troca do produto.

---

## FASE 6 — Registrar (fechamento)

- [ ] **Corte de série** na base: marcar que a Era **pré-migração** desses SKUs **não é comparável** à pós (ASIN novo, histórico zerado).
- [ ] Anotar `ASIN antigo → ASIN novo` por SKU (mapa de rastreio).
- [ ] Registrar a execução em `dados/Registro_Alteracoes_Amazon_Ads_Winnet.xlsx` e/ou no ciclo.
- [ ] Guardar a **Era** (sessões/vendas) de L1618-T e L2025-T tirada **antes** da Fase 4, para leitura pós-corte.

---

## Se der errado (rollback)

- Falha na variação (Fase 2)? Os 4 filhos continuam vivos **isolados** — corrige o arquivo e reenvia; nada se perde.
- Novo não indexou / com problema? **Não encerrar o Genérico** ainda (Fase 4 é o ponto sem volta prático) — resolver o novo primeiro.
- Genérico encerrado por engano? **Reabrir a oferta** (não foi excluído) enquanto o novo não estabiliza.

---

## Depois do piloto

Rodou limpo → repetir o mesmo fluxo nas demais famílias (`dados/FAMILIAS_VARIACAO.csv`), na ordem: **residenciais das outras linhas → comercial → industrial**. As 13 lixeiras que estão na **árvore de Indústria** (§10 do plano) entram já corrigidas para `17100596011` na criação do filho novo.
