# Contexto Operacional — Marketplaces Winnet

**Documento vivo.** Atualizar ao final de cada ciclo Ox e sempre que o estado da operação mudar.

- **Última atualização:** 19/08/2026
- **Responsável:** LEO
- **Marketplace primário:** Amazon (em operação)
- **Sinal externo:** Mercado Livre

---

## 1. Estado atual do ciclo

| Item | Estado |
|---|---|
| Último ciclo concluído | **O3** |
| Próximo ciclo | **O4** |
| Ritmo de otimização | quinzenal |
| Ritmo de monitoramento | semanal (7 dias) |
| Data do próximo monitoramento | *a definir com LEO* |
| Data aproximada da próxima O4 | *a definir com LEO* |

> Origem: informado por LEO na migração do Project para o Claude Code.
> Confirmar contra `docs/PARAMETROS_VIGENTES.md` e o Registro de Alterações antes de abrir a O4.

---

## 2. Casos abertos

| Caso | Referência | Situação |
|---|---|---|
| Caso Amazon | **21652133321** | Aberto / em acompanhamento — detalhamento pendente de upload |

---

## 3. Cobertura das fontes internas

| Fonte | Cobertura | Observação |
|---|---|---|
| `Registro_Vendas` | vendas reais registradas | Fonte oficial de valores realizados |
| `Livro_Vendas` | **fechamento em 07/09** | Atualização mensal; entre fechamentos fica 1–2 meses defasado |
| Planilha Mestra | **v4.3.2** | Fonte oficial de SKU/preço/custo/margem/tarifa/frete/classe logística |
| Controle Semanal | — | Acompanhamento do monitoramento |
| Registro de Alterações | — | Rastreabilidade dos ciclos Ox |

**Regra derivada:** para qualquer janela Ads posterior a **07/09**, o `Livro_Vendas` ainda não cobre o período. Ausência de venda no Livro nessa faixa **não** é evidência de ausência de venda — declarar a lacuna temporal explicitamente.

---

## 4. Versões vigentes

| Artefato | Versão |
|---|---|
| Skill `amazon-ads-winnet` | **v1.6.3** |
| Planilha Mestra | **v4.3.2** |
| Playbook Oficial Amazon Ads Winnet | v1 |

---

## 5. Inventário de dados no repositório

Rodar `/contexto` (ou o hook de SessionStart) para o inventário ao vivo.

| Pasta | Conteúdo esperado |
|---|---|
| `dados/` | Planilha Mestra v4.3.2, Controle Semanal, Registro de Alterações |
| `relatorios/amazon/` | Exports: Termos de Pesquisa, Segmentação, Produtos Anunciados, Posicionamento, Campanhas, Parcela de Impressões, Export do Gerenciador, Relatório de Negócios |
| `ciclos/` | Um arquivo por ciclo Ox concluído |

---

## 6. Pendências de upload

Itens que o Project original tinha e que ainda **não** estão neste repositório. Enquanto não subirem, as análises que dependem deles ficam com confiança reduzida e a lacuna deve ser declarada na seção **I. Dados que faltam** de cada entrega.

- [ ] `dados/Planilha_Mestra_Winnet_v4.3.2.xlsx`
- [ ] `dados/Controle_Semanal.xlsx`
- [ ] `dados/Registro_de_Alteracoes.xlsx`
- [ ] Conteúdo original de `docs/PLAYBOOK_AMAZON_ADS_WINNET.md`
- [ ] Conteúdo original de `docs/PARAMETROS_VIGENTES.md` (ACOS Objetivo/Máximo/Emergência, lances, orçamentos, vigias, Radar, promoções)
- [ ] Conteúdo original de `docs/GUIA_PLANILHA_MESTRA.md`
- [ ] Relatórios Amazon da janela da O4
- [ ] Detalhamento do caso 21652133321

---

## 7. Log de atualizações deste documento

| Data | Ciclo | O que mudou |
|---|---|---|
| 19/08/2026 | — | Criação do repositório; migração do Project para Claude Code; skill v1.6.3 instalada; stack Ruflo + claude-mem + find-skills ativada |
