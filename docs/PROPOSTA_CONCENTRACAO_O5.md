# PROPOSTA — CONCENTRAÇÃO DE CATÁLOGO

**Status:** PROPOSTA. Nada executado. Decisão prevista para a **O5 (~08/09/2026)**.

> ✅ **BLOQUEADOR RESOLVIDO (26/08):** capacidade de fornecimento não é restrição — disponibilidade
> respaldada por reposição imediata de fábrica, com expedição direta possível. A O5 fica dependendo
> apenas do monitoramento de 31/08.
>
> **DECISÃO DE ESCOPO (26/08, chat canônico):** esta proposta e o **Nível 2 da fila de conversão** (investimento profundo) são **uma decisão única** na O5, com **estoque por SKU na mesa**. Não decidir separado — concentrar catálogo e escolher onde investir em listing são a mesma pergunta de alocação.
**Preparada em:** 26/08/2026 · **Autor da análise:** Claude Code · **Aprovação:** LEO

**Fontes:** Planilha Mestra v4.3.2 (Simulador cenário SP Interior + `Registro_Vendas`) · Produtos Anunciados 30d (25/07–23/08) · Business Report por ASIN (19–25/08)

---

## 1. O problema em uma frase

A conta tem **46 sessões/dia distribuídas em 74 ASINs**. Mediana de 2 sessões por ASIN por semana. Nenhum produto acumula as ~58 sessões necessárias para esperar uma venda. **Não é falta de conversão — é dispersão.**

## 2. O paradoxo que a análise revelou

Os 6 SKUs que mais recebem tráfego hoje têm **lucro unitário médio de R$ 78,02**.
A família de lixeiras com pedal (P3050/P3060/P3070/P4080) tem **R$ 170,65** — **2,2× mais** — e recebe **50 sessões** contra **145** dos seis primeiros.

**O tráfego da conta está concentrado nos produtos de menor valor unitário.**

| SKU | Sessões/sem | Lucro unitário | Vendas reais |
|---|---:|---:|---:|
| L1618-T | 37 | R$ 21,36 | 3 |
| L2025-T | 28 | R$ 25,90 | 4 |
| SP-PP | 23 | R$ 47,54 | **0** |
| Q2460-B | 22 | R$ 69,89 | **0** |
| P3060 | 19 | R$ 143,36 | 2 |
| P3070 | 16 | R$ 160,07 | 1 |

O L1618-T é o campeão de tráfego da conta e o **pior uso dele**: 37 sessões/semana rendem ~R$ 13 de lucro esperado. O P3060, com metade do tráfego, rende ~R$ 47.

## 3. Limite honesto desta proposta

Ads gera **~118 cliques/semana** contra **~323 sessões/semana**: cerca de **1/3 do tráfego é comprado**. Concentrar via campanha redireciona essa fração. Os outros 2/3 são orgânicos e respondem a listing, ranking e avaliações — não a decisão de lance.

**Conclusão:** a concentração é real mas parcial. O ganho vem de duas frentes combinadas — Ads (imediato, 1/3) e listing/SEO/Vine (lento, 2/3).

---

## 4. Proposta de núcleo — 9 SKUs

Critério: **lucro unitário alto × evidência de demanda comprovada** (venda real registrada ou tráfego relevante).

### Núcleo A — alta prioridade (lucro unitário + venda comprovada)

| SKU | Lucro un. | Margem | Vendas reais | Sessões/sem | Cliques 30d | Justificativa |
|---|---:|---:|---:|---:|---:|---|
| **P4080** | R$ 268,22 | 25,1% | 1 | 7 | 17 | Maior lucro unitário do catálogo com venda comprovada |
| **P3070** | R$ 160,07 | 26,0% | 1 | 16 | 45 | Maior volume de cliques da conta; demanda ativa evidente |
| **EGC** | R$ 147,22 | 21,8% | 2 | 6 | 6 | Duas vendas reais; nicho de busca rara — já em radar (O4-012) |
| **P3060** | R$ 143,36 | 28,0% | 2 | 19 | 22 | **Melhor margem do catálogo** + tráfego + venda comprovada |
| **L3070-B** | R$ 131,50 | 24,2% | 1 | 5 | 8 | Vendeu via Ads na janela; termo-core já converte |
| **P3050** | R$ 110,94 | 23,7% | 2 | 8 | 34 | Duas vendas reais; 34 cliques indicam demanda |

### Núcleo B — manter (vendedores comprovados, lucro unitário menor)

| SKU | Lucro un. | Vendas reais | Sessões/sem | Justificativa |
|---|---:|---:|---:|---|
| **L2025-T** | R$ 25,90 | 4 | 28 | Maior número de vendas reais entre os de alto tráfego; vendeu via Ads |
| **L2460-CP** | R$ 75,87 | 1 | 4 | Vendeu via Ads na janela com apenas 2 cliques |
| **PXM** | R$ 43,48 | **8** | 6 | **Maior volume histórico da conta**; radar formalizado na O4-010 |

## 5. Proposta de redução de foco

Não é pausa — é **parar de priorizar em Ads** e deixar rodar no orgânico.

| SKU | Sessões/sem | Lucro un. | Motivo |
|---|---:|---:|---|
| **L1618-T** | 37 | R$ 21,36 | Maior tráfego da conta com o menor lucro unitário. Rende ~R$ 13/semana. O tráfego vale mais em outro lugar |
| **SP-PP** | 23 | R$ 47,54 | Zero venda real no histórico; CTR de 0,07% em 20.813 impressões |
| **Q2460-B** | 22 | R$ 69,89 | Zero venda real; 28 cliques sem conversão — investigar antes de investir |
| **Cauda** | ≤3 cada | — | 51 ASINs (69% do catálogo) consumindo 24% das sessões sem chance estatística de converter |

## 6. Efeito esperado

Se a fração de Ads (~118 cliques/semana) for concentrada nos 9 SKUs do núcleo em vez de espalhada em 92:

- Cada SKU do núcleo passaria de ~4–19 para **~13 cliques/semana** de Ads
- O núcleo A soma **R$ 961,32 de lucro unitário** contra R$ 78,02 médio dos atuais líderes de tráfego
- Uma venda no núcleo A vale de **2× a 12×** uma venda no L1618-T

**Não prometo aumento de vendas.** Prometo que cada venda que ocorrer vale mais, e que a amostra por SKU cresce o suficiente para as réguas do Playbook finalmente funcionarem.

## 7. O que esta proposta NÃO faz

- Não pausa campanha nenhuma
- Não altera lance nem orçamento
- Não mexe em listing
- Não descontinua produto
- Não reabre nenhuma decisão da O4

## 8. Perguntas para o LEO decidir na O5

> A pergunta sobre ordenação por lucro unitário foi **respondida em 26/08**: sim, em dois níveis — revisão barata ordena por valor diagnóstico; investimento profundo ordena por lucro × tráfego. Registrado na pendência 2 dos Parâmetros Vigentes.

1. O núcleo de 9 faz sentido comercialmente? Há SKU estratégico fora dele que precisa entrar?
2. ~~A família P30xx tem estoque e capacidade?~~ **RESPONDIDA em 26/08: sim.** Capacidade não é restrição.
3. Reduzir foco no L1618-T é aceitável, considerando que ele é porta de entrada de catálogo?
4. Concentrar Ads ou também concentrar esforço de listing/imagens nos mesmos 9?
5. O Vine, quando o Registro de Marca sair, entra primeiro nos 9 do núcleo?
6. **P4080 × subsídio de frete (registrado em 28/08 como pergunta, não objeção).** O P4080 está no **Núcleo A** — prioridade máxima — e é classe **Grandes**, justamente a classe excluída da promoção de 8% por risco de subsídio. **Se o frete escalar por unidade**, concentrar esforço no P4080 tem um custo que esta proposta não contabilizou. A pendência 5 dos Parâmetros permanece aberta e não conclusiva. Decidir na O5 com a medição que houver.
7. **Divergência `Ref_Frete` × frete real — ESCOPO AMPLIADO (28/08).** Item de **precificação, não de Ads**, mas que atinge **toda a base desta proposta**. Em pedidos de 1 unidade: **Pequenos 13 de 15 abaixo da tabela (mediana 50%)** e **Médios 11 de 11 abaixo (mediana 65%)**. Não é fenômeno de uma classe — **as margens de praticamente todo o catálogo podem estar subestimadas no Simulador**.

   Consequência direta: o **lucro unitário** que ordena o Núcleo A, o Núcleo B e a fila profunda foi calculado sobre **frete de tabela**. Se o frete real é ~50–65% da tabela, **todos os rankings desta proposta mudam de valor — possivelmente de ordem**. Reavaliar sobre frete real, com o Livro de agosto fechado, **antes de fixar a lista final**.
8. **DESEMPATE OBRIGATÓRIO — Q2460-B.** O SKU aparece **simultaneamente** na fila de investimento profundo (nº 4, R$ 26,45/semana de lucro esperado) e na lista de **redução de foco** desta proposta (zero venda real, 28 cliques sem conversão). **As duas posições são incompatíveis** — não se desinveste e investe pesado no mesmo SKU. Como a fila profunda e a concentração são uma decisão única, o desempate é do LEO na O5.

## 9. Dados que elevariam a confiança

- ~~Estoque atual por SKU~~ — **RESOLVIDO em 26/08**: reposição de fábrica com expedição direta; capacidade não restringe
- Prazo de manuseio configurado por SKU × prazo real de expedição da fábrica (para vigiar a Taxa de Envio com Atraso)
- Cobertura completa do `Registro_Vendas` (39 linhas registradas; confirmar se é o histórico integral)
- Posição de preço contra concorrentes nos 9 do núcleo
- Leitura pós-O4 (31/08) — se o lance da Geral a R$ 0,48 já redistribuiu tráfego
