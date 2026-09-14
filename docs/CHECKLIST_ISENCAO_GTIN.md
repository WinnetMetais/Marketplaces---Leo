# CHECKLIST — ISENÇÃO DE GTIN (Amazon)

**Decisão do LEO, 14/09/2026.** Substitui o caminho do EAN próprio via GS1 (`CHECKLIST_GS1_EAN.md`, suspenso).
**Objetivo:** destravar a criação de ASIN novo sob a marca **WINNET METAIS** para o piloto de migração da O6 (22/09).

⚠️ **Não executar nada na conta sem aprovação — este repositório opera em ANALISAR → RECOMENDAR.**

---

## Situação em 14/09 — ⚠️ RECUSADA

- Pedido **feito** dentro do fluxo de cadastro de anúncio novo.
- **RECUSADO pela Amazon.** Motivo **não lido** — o LEO localizou a recusa mas não conseguiu abrir a justificativa.
- Data da solicitação e nº do caso: **não registrados** — preencher quando conhecidos.

### Hipótese do motivo — confiança ALTA, a confirmar

A regra da Amazon exige que **o nome da marca informado corresponda exatamente à marca fisicamente afixada no produto ou na embalagem**, comprovada por fotos reais de todos os lados.

O diagnóstico de catálogo de 01/09, neste repositório, registra:

> *"Adesivo do produto traz **'Winnet Home & Pro'** — não bate com a marca registrada. **Embalagem sem impressão de marca**."*

Pedida a isenção para **WINNET METAIS**, as fotos mostram "Winnet Home & Pro" no adesivo e nada na embalagem. A marca solicitada **não existe fisicamente no produto**. Se for esse o motivo, **reenviar não resolve** — é condição física, não de formulário.

**Confirmar lendo o motivo real antes de agir.**

### ⚠️ Consequência — o adesivo virou o caminho crítico

Os três caminhos convergem no mesmo pré-requisito físico:

| | Exige adesivo com a grafia `WINNET METAIS`? |
|---|---|
| Isenção de GTIN | **Sim** — é a prova exigida |
| ASIN novo sob a marca | **Sim** |
| EAN próprio via GS1 | **Sim** (já era o item 12 do checklist GS1) |

**Premissa de custo alterada:** o argumento que descartou a GS1 em 01/09 era o custo combinado de anuidade **+** reimpressão do adesivo. A reimpressão passou a ser **obrigatória em qualquer cenário**, então o custo incremental de imprimir um código de barras real no mesmo adesivo é quase zero. ⚠️ **Decidir isso ANTES de mandar imprimir** — adesivo sem código de barras implica segunda reimpressão se a GS1 voltar. Conversa com Wintech e Dianna, que foram as partes da decisão de 01/09.

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

10. [ ] **Ler o motivo real da recusa** — `Ajuda → Registro de casos` → abrir o caso → detalhe/correspondência. Conferir também o e-mail de recusa (spam/promoções). Motivo genérico: responder no próprio caso pedindo o específico.
11. [ ] Registrar aqui o **motivo** e o **nº do caso**
12. [ ] **Adesivo novo com a grafia `WINNET METAIS`** — Wintech. Caminho crítico dos três cenários. **Decidir com/sem código de barras antes de imprimir.**
13. [ ] Só depois do adesivo: **reenviar a isenção** com fotos reais do produto e da embalagem mostrando a marca afixada
14. [ ] **O6 (22/09): escopo da migração entra como NÃO DECIDIR AINDA.** O corte de 19/09 não será cumprido — reimpressão de adesivo tem lead time de produção. O dia 22/09 fica para os vereditos.
15. [ ] Reabrir a decisão GS1 × isenção com **Wintech e Dianna** — foi delas a decisão de 01/09, e a premissa de custo mudou

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
