# Playbook Oficial — Amazon Ads Winnet v1

**Fonte oficial de MÉTODO.** Define **COMO** analisar e decidir.

> ⚠️ **Status:** o texto integral do Playbook v1 ainda **não** foi migrado do Project original.
>
> **Enquanto isso, o método de referência executável é a Skill `amazon-ads-winnet` v1.6.3**
> (`.claude/skills/amazon-ads-winnet/SKILL.md`, 2.135 linhas), que codifica o Playbook em
> forma operacional e inclui os refinamentos dos Testes Reais 1–6.
>
> Não substituir as regras do Playbook/Skill por práticas genéricas de Amazon Ads sem
> **apontar explicitamente o conflito** ao LEO.

---

## Mapa do método (índice da Skill v1.6.3)

O ciclo canônico é **LER → VALIDAR → CRUZAR → ANALISAR → EXPLICAR → RECOMENDAR**.

| # | Bloco | Assunto |
|---|---|---|
| 1–2 | Fontes | Fontes oficiais e hierarquia por tipo de informação |
| 3 | Modos | A (semanal) · B (Ox quinzenal) · C (investigação) · D (Ads × total) |
| 4 | Inventário | Os 11 insumos procurados antes de analisar |
| 5 | Validação | Período, unidade, duplicidade, números BR, consistência |
| 6 | Cruzamento | Ads × vendas totais × não atribuídas a Ads |
| 7–8 | Leitura | Visão geral da conta e análise de campanha |
| 9 | Diagnóstico | Entrega × conversão — classificação inicial obrigatória |
| 10–13 | Réguas de amostra | Radar · Checkpoint de cliques · PI (alvo ≠ campanha) · Contrapeso vitalício |
| 14–16 | Réguas de investimento | Orçamento · Lances · Manuais novas |
| 17–18 | Busca | Termos de pesquisa · Negativações |
| 19–21 | Ativos | SKU · Página/listing · Campanha geral automática |
| 22–24 | Vigilância | Zumbis/porão · Vigias · Mercado Livre como sinal externo |
| 25–26 | Decisão | Nível de confiança · Categorias de decisão |
| 27 | Entrega | Formato obrigatório A–I |
| 28–29 | Travas | Trava de execução · Regras antialucinação |
| 30–34 | Robustez | Atualidade · Comportamento com fontes ausentes · Pouca amostra · Rastreabilidade |
| 38–41 | Refinamentos | Testes Reais 2–5 (TOS IS, SIS, Mestra × Ads, break-even) |
| 42 | Fontes internas | `Registro_Vendas` e `Livro_Vendas` |
| 43–44 | Refinamentos finais | Testes Reais 5–6 (eficiência ≠ lucratividade, halo, prontidão para Ox) |

---

## Princípios não negociáveis

1. **Analisar e recomendar.** Nunca executar alteração sem aprovação explícita do LEO.
2. **Nunca inventar dado.** Lacuna se declara, não se preenche.
3. **Não somar relatórios Ads entre si.** São ângulos da mesma performance.
4. **Não cruzar janelas incompatíveis.** 7 dias de um ≠ 30 dias de outro.
5. **Ausência de evidência ≠ evidência de fracasso.** Pouca amostra leva a Radar/coleta, não a pausa.
6. **Alvo ruim ≠ campanha ruim.** Especialmente em Produto Indicado.
7. **Eficiência de Ads ≠ lucratividade.** ACOS bom não prova margem boa.
8. **Coincidência de valor não prova causa.** Nem correspondência temporal.
9. **Divergência entre fontes se registra**, não se esconde.
10. **Toda decisão carrega nível de confiança.**

---

## Pendência

- [ ] Substituir este índice pelo texto integral do **Playbook Oficial Amazon Ads Winnet v1**
      quando o documento original for carregado. Manter o índice como sumário navegável.
