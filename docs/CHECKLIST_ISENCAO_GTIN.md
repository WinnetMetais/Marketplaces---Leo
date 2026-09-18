# CHECKLIST — ISENÇÃO DE GTIN (Amazon)

**Decisão do LEO, 14/09/2026.** Substitui o caminho do EAN próprio via GS1 (`CHECKLIST_GS1_EAN.md`, suspenso).
**Objetivo:** destravar a criação de ASIN novo sob a marca **WINNET METAIS** para o piloto de migração da O6 (22/09).

⚠️ **Não executar nada na conta sem aprovação — este repositório opera em ANALISAR → RECOMENDAR.**

---

## Situação em 14/09 — ⚠️ RECUSADA

- Pedido **feito** dentro do fluxo de cadastro de anúncio novo.
- **RECUSADO pela Amazon.** Motivo **não lido** — o LEO localizou a recusa mas não conseguiu abrir a justificativa.
- Data da solicitação e nº do caso: **não registrados** — preencher quando conhecidos.

### Motivo declarado pela Amazon (texto recebido em 14/09)

> *"After a review, we've identified that you haven't provided images that meet all requirements."*

Seguido da lista genérica de requisitos, **sem apontar qual falhou**:

- Imagens claras de **todos os lados** do produto **e da embalagem** (frente, verso, esquerda, direita, topo, base)
- **Fotos reais**, não renderizações digitais
- **O nome da marca deve corresponder exatamente** entre todas as imagens e a solicitação
- **A marca deve estar permanentemente afixada**
- JPEG ou PNG até 10 MB · mínimo 500×500 · bem iluminada e em foco

Referência: `https://sellercentral.amazon.com.br/help/hub/reference/G200426310`

### ⚠️ CAUSA RAIZ IDENTIFICADA EM 14/09 — três grafias diferentes

As fotos enviadas na solicitação eram de uma **lixeira-amostra com a marca GRAVADA no inox: `WIN NET METAIS`**. O LEO confirmou que **essa não é a unidade que embarca** — os produtos em estoque ainda saem com o **adesivo `Winnet Home & Pro`**.

| Onde | Grafia |
|---|---|
| Produto que embarca (estoque atual) | **Winnet Home & Pro** |
| Amostra fotografada (gravada no inox) | **WIN NET METAIS** |
| Brand Registry / solicitação | **WINNET METAIS** *(confirmado na tela em 14/09 — tudo junto, sem espaço)* |
| Nome da conta de vendedor (Seller Central) | **WinNet Metais** *(visto em 18/09 — quarta grafia; não bloqueia nada por si, mas é mais um lugar onde a marca aparece diferente)* |

**Nenhuma corresponde a outra.** A Amazon exige correspondência exata entre a marca da solicitação e a marca afixada no produto fotografado.

**Consequências:**

1. **Refazer as fotos NÃO resolve.** O problema não está na foto — está no produto. A causa "A — procedimento de foto" fica descartada como causa suficiente.
2. **As imagens têm de ser da unidade que embarca.** Aprovar a isenção com base numa amostra e despachar unidades com outra marca é problema de integridade de marca, com o **INPI 944049613 em oposição** e o Brand Registry exposto. **Não reenviar com fotos da amostra.**
3. **Não reenviar antes de resolver a grafia.** Recusa repetida não gera informação nova.

**Achado positivo:** a amostra prova que **a fábrica consegue gravar a marca permanentemente no inox**. Isso é superior ao adesivo — não descola, não desbota, e satisfaz *"permanently affixed"* sem discussão. O caminho pode ser **levar a gravação à produção**, não reimprimir adesivo.

**Nota sobre a GS1:** o Brand Registry foi aprovado em 01/09, o que normalmente já exige prova da marca no produto. A revisão de imagem que barrou o pedido é **específica do processo de isenção**; anunciar com um EAN real não passa por ela. Registrado como fato, não como reabertura da decisão do LEO.

### ⚠️ Comparação de caminhos em 14/09 — a GS1 ficou mais curta

| Caminho | Falta | Prazo |
|---|---|---|
| **Isenção de GTIN** | Mudar a marcação do produto na produção para `WINNET METAIS` | **Indefinido** — depende da Wintech |
| **GS1** | **Um documento** (Faturamento Fiscal do Último Exercício, com a contabilidade) | **1–2 dias úteis** de análise |

A filiação à GS1 **já estava em andamento** — dois dos três documentos aprovados (conferido no portal em 14/09; ver `CHECKLIST_GS1_EAN.md`, que foi reativado). Com EAN real, o ASIN novo sob `WINNET METAIS` é criado **sem passar pela revisão de imagem** que barrou a isenção.

**Isto não dispensa a marcação correta do produto** — ela continua necessária por integridade de marca, NF e outros canais. Mas **deixaria de ser o gargalo da migração**.

### Perguntas em aberto — bloqueiam o cronograma

1. [x] **Grafia exata no Brand Registry — CONFIRMADA em 14/09: `WINNET METAIS`**, tudo junto, sem espaço. ⚠️ Logo **a amostra gravada (`WIN NET METAIS`) também está errada** — as três grafias divergem entre si. Pior cenário confirmado; nenhum atalho de digitação resolve.
2. [ ] **A gravação vai para a produção? Quando?** É isto que define o cronograma da migração — não a Amazon.
3. [ ] **O adesivo `Winnet Home & Pro` sai de linha junto?** Conviverem no mesmo produto é pior que uma grafia errada só.

### ⚠️ Consequência — a marcação do produto é o caminho crítico

Os três caminhos convergem no mesmo pré-requisito físico:

| | Exige a marca correta afixada no produto que embarca? |
|---|---|
| Isenção de GTIN | **Sim** — é a prova exigida, e foi onde travou |
| ASIN novo sob a marca | **Sim** |
| EAN próprio via GS1 | **Sim** (já era o item 12 do checklist GS1) |

**Premissa de custo alterada:** o argumento que descartou a GS1 em 01/09 era o custo combinado de anuidade **+** reimpressão do adesivo. A reimpressão é necessária em qualquer cenário, então o custo incremental de imprimir um código de barras real no mesmo adesivo é quase zero. ⚠️ **Decidir isso ANTES de mandar imprimir** — adesivo sem código de barras implica segunda reimpressão se a GS1 voltar. Conversa com Wintech e Dianna, que foram as partes da decisão de 01/09. **Abrir essa conversa em paralelo ao reenvio**, não depois do resultado.

## Fase 1 — Conferir o que foi pedido (fazer JÁ)

Três coisas podem invalidar o pedido sem aviso. Conferir antes de esperar mais:

1. [ ] **Em qual marca o pedido saiu.** Tem que ser **WINNET METAIS**, não "Genérico". Se saiu como Genérico, não serve — o objetivo inteiro é o ASIN sob a marca registrada.
2. [ ] **Em qual categoria.** A isenção é concedida **por marca + categoria**. Os SKUs do piloto (P3060, P3050, P4080) são `MOUNT_BRACKET` — confirmar que foi essa. As lixeiras são `TRASH_CAN` e precisariam de pedido próprio.
3. [ ] **Qual é o status agora.** Ler na tela, não esperar e-mail. Três lugares:
   - **Catálogo → Exibir solicitações de venda** *(View selling applications)* — o caminho direto
   - **Catálogo → Adicionar produtos** → seção de status de isenção de GTIN → link **"Verifique seu status aqui"** → leva a *"Seus registros de casos e solicitações"*
   - **Ajuda → Registro de casos**, se o pedido virou caso

   ⚠️ **O prazo normal é 48h** (e-mail em até 2 dias úteis; revisão em 48–72h). **Vazio nos três lugares = a solicitação nunca foi criada** — provável se o formulário foi preenchido dentro do fluxo do anúncio e não chegou a ser submetido. Nesse caso, refazer por *Catálogo → Adicionar produtos → "não tenho um ID de produto"*.

4. [ ] Registrar aqui o **ID / número da solicitação** e a **data**.
5. [ ] Aprovada: esperar **~30 minutos** antes de criar o anúncio.

## Fase 2 — Se estiver aprovada

6. [ ] Anotar a cobertura exata (marca + categorias liberadas)
6. [ ] Criar o ASIN novo **sem product ID**, sob a marca **WINNET METAIS** (Brand Registry ativo)
7. [ ] Seguir a **sequência obrigatória da pendência 7**: ASIN novo publicado e ativo → oferta antiga **encerrada (não excluída)** → produto trocado no grupo de anúncios
8. [ ] **Nunca em SP-01/SP-T** — excluídos da migração (histórico de política de fumo)
9. [ ] Marcar o **corte de série**: Era pré-migração e pós-migração não são comparáveis por SKU migrado

## Fase 3 — Após a recusa (gatilho disparado em 14/09)

10. [x] ~~Ler o motivo da recusa~~ — obtido em 14/09 (ver acima): **imagens fora dos requisitos**, sem especificação de qual item
11. [ ] Registrar aqui o **nº do caso** e a **data da solicitação**
12. [ ] **Fechar as três perguntas acima** — grafia do Brand Registry, gravação em produção, destino do adesivo antigo
13. [ ] **NÃO reenviar a isenção** enquanto a unidade que embarca não trouxer a grafia do Brand Registry. Reenvio com foto da amostra está descartado.
14. [ ] **Definir com a Wintech a marcação de produção** — gravação no inox (preferível) ou adesivo novo. **Decidir com/sem código de barras antes de produzir.**
15. [x] ~~Corte de 19/09~~ — **não será cumprido.** O bloqueio é físico e conhecido, não é espera de análise. **O6 (22/09): escopo da migração entra como `NÃO DECIDIR AINDA`**; o dia fica para os vereditos.
16. [ ] Reabrir a decisão GS1 × isenção com **Wintech e Dianna** — foi delas a decisão de 01/09; a premissa de custo mudou e a revisão de imagem da isenção é o bloqueio que a GS1 contorna
17. [ ] Quando a produção sair com a marca correta: fotografar **a unidade que embarca** — 6 lados do produto e 6 da embalagem, foto real, sem retoque — e reenviar

---

## O que este caminho NÃO resolve

Registrado para não se perder. A decisão foi tomada com isso conhecido.

| Item | Situação |
|---|---|
| **NF — campo `cEAN`** | Sem solução. A isenção não gera GTIN. Aberto com contabilidade/ERP. |
| **Código de barras no adesivo** | Sem solução. A reimpressão com a grafia `WINNET METAIS` continua necessária; o código de barras, não. |
| **Mercado Livre e outros canais** | Sem identificador próprio. A isenção vale só na Amazon. |
| ⚠️ **Acoplamento ao INPI** | A isenção é concedida **por marca**. Com o **INPI 944049613 em oposição**, se a marca for negada e o Brand Registry revogado, a isenção cai junto — ASINs novos sem identificador e sem marca. O EAN da GS1 sobreviveria; a isenção não. |

---

**Nota de fonte:** os caminhos de verificação e o prazo de 48h da Fase 1 foram levantados em 14/09 na documentação pública da Amazon e em fóruns do Seller Central — **não vêm de documento deste repositório** e a interface muda. Confirmar no console. A concessão por marca + categoria segue a mesma ressalva.
