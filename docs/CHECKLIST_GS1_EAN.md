# CHECKLIST — EAN PRÓPRIO VIA GS1 BRASIL (decisão de 01/09/2026)

Decisão registrada: Wintech + Dianna, 01/09. Isenção de GTIN descartada.
⚠️ **REGRA DE OURO: toda a filiação no CNPJ titular da marca WINNET METAIS.**

## Fase 1 — Filiação (fazer JÁ — é o caminho crítico do piloto da O6, 22/09)

1. [ ] Acessar **gs1br.org** → "Solicitar código de barras" / associar-se
2. [ ] Preencher os dados **do CNPJ titular da marca WINNET METAIS** (não o da fábrica, não outro CNPJ do grupo)
3. [ ] Usar o **simulador de valores** do site: escolher a faixa de códigos pela projeção do catálogo — hoje são **114 ofertas**; com variações pai/filho na recriação e novos produtos, dimensionar com folga (faixa de centenas a 1.000)
4. [ ] Enviar os documentos solicitados (cartão CNPJ, dados do responsável legal) e **pagar o boleto** da anuidade
5. [ ] Aguardar confirmação — o acesso ao **Cadastro Nacional de Produtos (CNP)** libera após o pagamento confirmado

## Fase 2 — Emissão dos GTINs (no CNP, após liberação)

6. [ ] Acessar o **Cadastro Nacional de Produtos (CNP)** com o login da associação
7. [ ] Cadastrar cada produto e **atribuir um GTIN-13 (EAN) por SKU** — descrição, marca `WINNET METAIS`, NCM, dimensões
8. [ ] **Começar pelos SKUs do piloto da O6** (2–3, a definir na O5) — o resto pode ser emitido em lotes depois
9. [ ] Exportar a lista GTIN ↔ produto do CNP

## Fase 3 — Integração com a base Winnet

10. [ ] Enviar a lista de GTINs ao Claude Code → criação do **mapeamento SKU → EAN → ASIN novo** para a migração (coluna nova na base, sem tocar na estrutura da Mestra sem diagnóstico)
11. [ ] **Nota fiscal**: informar o GTIN nos itens (campo cEAN do XML) — alinhar com a contabilidade/ERP
12. [ ] **Adesivo**: reimpressão com grafia `WINNET METAIS` + código de barras impresso (ferramenta homologada gera a imagem a partir do GTIN)

## Fase 4 — Uso na Amazon (só a partir da O6, 22/09 — piloto aprovado na O5)

13. [ ] Criar o ASIN novo com `product-id-type = EAN` e o GTIN próprio, sob a marca **WINNET METAIS** (Brand Registry ativo)
14. [ ] Seguir a **sequência obrigatória da pendência 7**: ASIN novo publicado e ativo → oferta antiga **encerrada (não excluída)** → produto trocado no grupo de anúncios
15. [ ] Nunca em SP-01/SP-T (excluídos da migração — histórico de política de fumo)

## Prazos e responsáveis

| Etapa | Quem | Quando |
|---|---|---|
| Filiação + pagamento | Dianna (CNPJ titular) | Esta semana — lead time externo |
| Emissão dos primeiros GTINs (piloto) | LEO/Wintech | Após O5 definir os 2–3 SKUs |
| Mapeamento SKU→EAN→ASIN | Claude Code | Ao receber a lista |
| Adesivo novo | Wintech | Até a O6 (22/09) |

Fontes: [GS1 Brasil — solicitar código de barras](https://www.gs1br.org/solicitar-codigo-de-barras) · [Passo a passo do registro](https://blog.gs1br.org/passo-a-passo-saiba-como-e-feito-o-registro-do-codigo-de-barras/)
