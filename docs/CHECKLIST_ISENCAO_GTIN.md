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

### Duas causas possíveis — e o teste que as separa

⚠️ **Correção de 14/09:** a hipótese anterior ("recusa por marca não afixada", confiança ALTA) **não é confirmada por este texto**. A Amazon citou imagens, sem especificar o item. As duas causas continuam abertas:

| | Causa | Custo de corrigir |
|---|---|---|
| **A** | **Procedimento de foto** — enviadas imagens de catálogo/render em vez de fotos reais dos 6 lados do produto e da embalagem. Erro mais comum. | Uma hora e uma mesa |
| **B** | **A marca** — o adesivo diz *"Winnet Home & Pro"*, a solicitação diz `WINNET METAIS`, e a embalagem não tem impressão de marca. Falha em *"brand name must exactly match"* e em *"branding must be permanently affixed"*. | Reimpressão do adesivo (produção Wintech) |

**Teste discriminante, barato:** refazer as fotos corretamente e reenviar.
- **Aprovado** → era a causa A; o adesivo deixa de ser urgente para este fim.
- **Recusado de novo** → causa B confirmada; o adesivo é o bloqueio real.

⚠️ **NÃO retocar o adesivo nas fotos.** Imagem digitalmente alterada é motivo declarado de recusa e é questão de política, não de cadastro. Fotografar como está.

⚠️ **A embalagem é o ponto frágil:** ela não tem marca impressa (diagnóstico de catálogo, 01/09). Fotografar caixa lisa pode não satisfazer *"branding must be permanently affixed"* — é exatamente onde a causa B se manifesta.

### ⚠️ Consequência — o adesivo virou o caminho crítico

Os três caminhos convergem no mesmo pré-requisito físico:

| | Exige adesivo com a grafia `WINNET METAIS`? |
|---|---|
| Isenção de GTIN | **Sim** — é a prova exigida |
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
12. [ ] **REFAZER AS FOTOS** — 6 lados do produto **e** 6 da embalagem, foto real sobre a mesa ou na mão, sem render, sem fundo de estúdio, adesivo legível em ao menos uma, nenhum código de barras GS1 visível, JPEG/PNG ≥ 500×500 até 10 MB. **Sem retoque.**
13. [ ] **Reenviar a isenção** com essas fotos — é o teste discriminante entre as causas A e B
14. [ ] **Em paralelo, abrir com a Wintech o adesivo com a grafia `WINNET METAIS`** — necessário nos três cenários independentemente do resultado. **Decidir com/sem código de barras antes de imprimir.**
15. [ ] **Corte de 19/09 (sexta) — de volta em jogo.** Aprovado até lá, o escopo da migração entra na O6. Recusado de novo, causa B confirmada, escopo vai a **NÃO DECIDIR AINDA** e 22/09 fica para os vereditos.
16. [ ] Se a causa B se confirmar: reabrir a decisão GS1 × isenção com **Wintech e Dianna** — foi delas a decisão de 01/09, e a premissa de custo mudou

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
