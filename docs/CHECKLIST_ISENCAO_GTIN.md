# CHECKLIST — ISENÇÃO DE GTIN (Amazon)

**Decisão do LEO, 14/09/2026.** Substitui o caminho do EAN próprio via GS1 (`CHECKLIST_GS1_EAN.md`, suspenso).
**Objetivo:** destravar a criação de ASIN novo sob a marca **WINNET METAIS** para o piloto de migração da O6 (22/09).

⚠️ **Não executar nada na conta sem aprovação — este repositório opera em ANALISAR → RECOMENDAR.**

---

## Situação em 14/09

- Pedido **feito** dentro do fluxo de cadastro de anúncio novo.
- **Sem retorno da Amazon.**
- Data exata da solicitação: **não registrada** — preencher quando conhecida.

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

## Fase 3 — Se não houver retorno

10. [ ] **Corte em 19/09 (sexta).** Sem aprovação até lá, o escopo da migração entra na O6 como **NÃO DECIDIR AINDA** e o dia 22/09 fica só para os vereditos.
11. [ ] Se for negada: reabrir a decisão sobre a GS1 com a Wintech e a Dianna — foi delas a decisão de 01/09

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
