# Amazon Ads — Parâmetros Vigentes

**Fonte oficial de ESTADO.** Define os valores numéricos correntes da operação.

- **Vigência declarada:** *pendente de upload do documento original*
- **Última revisão:** —
- **Ciclo de referência:** O3 → O4

> ⚠️ **Status:** este arquivo é o **esqueleto** dos Parâmetros Vigentes. Os valores numéricos
> ainda **não** foram migrados do Project original. Enquanto os campos estiverem marcados
> `PENDENTE`, é **proibido** preenchê-los por memória, inferência ou prática genérica de
> Amazon Ads. Qualquer análise que dependa de um campo `PENDENTE` deve declarar a lacuna
> na seção **I. Dados que faltam** e reduzir o nível de confiança da recomendação.

---

## 1. Metas de ACOS

| Parâmetro | Valor vigente |
|---|---|
| ACOS Objetivo | `PENDENTE` |
| ACOS Máximo | `PENDENTE` |
| ACOS Emergência | `PENDENTE` |

**Regra de método (já vigente, independe do número):** o **break-even ACOS** é uma fronteira
econômica aproximada, **não** vira teto operacional automaticamente e **não** é meta de campanha.

---

## 2. Réguas de amostra (método corrente — confirmadas pela Skill v1.6.3)

| Régua | Valor | Nível de aplicação |
|---|---|---|
| Checkpoint de cliques sem venda | **~15 cliques** | abre diagnóstico de conversão (não é pausa automática) |
| Produto Indicado — pausa de alvo | **15+ cliques vitalícios sem venda** | **ALVO / segmentação**, nunca campanha |
| Triagem de ASIN em PI | sinais menores de cliques sem venda | revisão, não ação |

---

## 3. Lances

| Campanha | Estratégia atual | Lance atual | Observação |
|---|---|---|---|
| `PENDENTE` | `PENDENTE` | `PENDENTE` | |

**Regras vigentes:**
- Não existe estratégia única na conta. Campanhas de gerações diferentes podem usar
  *Lances dinâmicos — aumentar e reduzir* ou *Lances fixos*.
- Se a estratégia não estiver disponível: **não presumir**. Marcar
  *"Estratégia de lance precisa ser confirmada antes da execução."*
- Na mesma estratégia: **lance Exata > lance Frase**.
- Formato obrigatório: `lance atual → lance sugerido → variação → motivo → confiança`.

---

## 4. Orçamentos

| Campanha | Orçamento atual | Capacidade de consumo observada |
|---|---|---|
| `PENDENTE` | `PENDENTE` | `PENDENTE` |

**Regras vigentes:**
- Régua de orçamento aplica-se **somente no ciclo de otimização**.
- Não aumentar orçamento de campanha **sem venda** no período.
- Não concluir ausência de restrição comparando a **soma** dos orçamentos da conta com o
  gasto médio agregado. Sem evidência individual, usar:
  *"Não há evidência agregada de restrição generalizada por orçamento."*
- Formato obrigatório: `orçamento atual → orçamento sugerido → motivo → evidência de que o orçamento é de fato a restrição`.

---

## 5. Ajustes de posicionamento

| Posicionamento | Ajuste vigente |
|---|---|
| Topo da busca (primeira página) | `PENDENTE` |
| Páginas de produto | `PENDENTE` |
| Resto da busca | `PENDENTE` |

---

## 6. Estado das campanhas

| Campanha | Tipo | Status | Ciclo de origem |
|---|---|---|---|
| `PENDENTE` | | | |

---

## 7. Vigias ativas

| Campanha / Alvo | Condição de saída | Prazo | Aberta em |
|---|---|---|---|
| `PENDENTE` | | | |

Toda Vigia exige **condição e prazo explícitos**.

---

## 8. Radar ativo

| Campanha / Alvo | Motivo | Amostra acumulada | Checkpoint |
|---|---|---|---|
| `PENDENTE` | | | |

**Radar só é acionado com falta de entrega sustentada pelos dados + amostra insuficiente.**
Poucos cliques isoladamente não acionam Radar. Objetivo: **gerar amostra, não escalar gasto**.

---

## 9. Promoções vigentes

| SKU / Família | Tipo | Período | Impacto esperado |
|---|---|---|---|
| `PENDENTE` | | | |

---

## 10. Negativações consolidadas

| Termo | Tipo (exata/frase) | Campanha | Ciclo |
|---|---|---|---|
| `PENDENTE` | | | |

**Política permanente:** termos da família **tabaco** e correlatos são negativação por
irrelevância semântica — a Winnet não opera essa categoria.

---

## 11. Histórico de atualização

| Data | Ciclo | O que mudou |
|---|---|---|
| 19/08/2026 | — | Esqueleto criado na migração para o Claude Code. Valores aguardando upload. |
