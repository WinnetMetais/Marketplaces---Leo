# O7 13/10 — Lista G refeita com a régua original da assessoria (Henrique)

**Origem:** LEO enviou em 13/10 o PDF "Otimização de ADS" (régua original da assessoria), preservado em `docs/referencia/Otimizacao_de_ADS_assessoria_Henrique.pdf`. Pedido: refazer a lista de ações da O7 aplicando essa régua.
**Base:** relatórios de 30 dias (12/09–11/10) já auditados na O7 · vitalício por alvo das 3 PIs · Mestra v4.3.5 (preços de tabela) · ACOS Máximo 18% / Objetivo 9% (Parâmetros §1).
**Trava:** ANALISAR → RECOMENDAR. Nada abaixo está executado.

---

## 1. O que a régua do Henrique diz (resumo fiel do PDF)

| Bloco | Regra | Situação no método atual |
|---|---|---|
| Definições | **ACOS Máximo = margem média bruta** (Gestor Seller, 30 dias) · **ACOS Objetivo = metade da margem** | Parâmetros usam 18% / 9% fixos, origem não documentada |
| Ritmo | otimizar a cada 15 dias · monitorar a cada 7 · **pausar acima do dobro do Máximo** (exceto Geral) | igual (Ox quinzenal, monitoramento semanal, Emergência 36%) |
| Geral (30d) | produto com ACOS > Máximo → **pausar produto** · produto gastou 50% do preço sem vender → pausar produto · segmentação com ACOS > 100% → lance −50% | parcialmente: Playbook usa checkpoint de ~15 cliques no lugar do "50% do preço" (§33) |
| Individuais e Manuais (30d, por segmento) | ACOS > Máximo → lance −50% · **ACOS < Máximo → não mexer** · ACOS > 2× Máximo → pausar segmento · gastou 50% do preço sem vender → −50% · **gastou < R$ 5 → CPC +20%** (só se o ACOS da campanha < Máximo) · produto com variação acima do Máximo → desligar produto | **"R$ 5 → +20%" aposentada** (Playbook §33, Memória); "50% do preço" aposentada; o resto está no Playbook |
| PI | vitalício por alvo: ACOS > Máximo −50% · > 2× pausar · **> 15 cliques sem venda → pausar alvo** · 30d: campanha toda gastou < R$ 5 → **+20% no lance padrão de todas as segmentações** (só se ACOS < Máximo) | régua de 15 cliques igual; o "+20% em massa" virou Radar |
| Orçamento (15 em 15, 30d, exceto Geral) | ACOS < Objetivo → **+100%** · entre Objetivo e Máximo → **+20%** · > Máximo → −50% | **suspensa na O4**: orçamento só é alavanca quando a campanha o consome (Memória) |

---

## 2. Régua do Henrique aplicada mecanicamente aos 30 dias (12/09–11/10)

### 2.1 Orçamento
| Campanha | Orç. | Custo 30d | ACOS | Regra Henrique | Observação |
|---|---:|---:|---:|---|---|
| PI PXM | 40 | 2,52 | 0,4% | **+100% → R$ 80** | consome R$ 0,08/dia de R$ 40 — sem efeito prático |
| PI P3070 | 20 | 160,73 | 13,0% | **+20% → R$ 24** | consome R$ 5,36/dia de R$ 20 — sem efeito prático |
| Geral | 90 | 297,33 | 5,2% | exceção | consome 12% |
| demais 9 | — | — | sem venda | "só há ACOS quando há venda" → regra não se aplica | — |

### 2.2 Geral — fase produto e segmentação
- Nenhum produto com ACOS > 18% (maior: L1618-T 13,3%). Nenhum produto gastou 50% do preço sem vender (maior: Q2460-B, 6% do preço). **Nenhuma pausa de produto.**
- Nenhuma segmentação com ACOS > 100% (close 4,4% · substitutes 4,2% · loose 9,4%). **Pela régua do Henrique a Geral fica como está** ("ACOS abaixo do Máximo → não mexer").

### 2.3 Individuais e manuais — segmento a segmento
| Campanha · segmento | Lance | Impr | Cli | Custo | Regra Henrique | Resultado |
|---|---:|---:|---:|---:|---|---|
| Extintor · "suporte para extintor de incêndio" | 2,60 | 143 | 1 | 0,72 | gastou < R$ 5 | **+20% → 3,12** |
| Cinzeiros · "lixeira com cinzeiro" | 1,60 | 258 | 1 | 1,56 | gastou < R$ 5 | **+20% → 1,92** |
| Bituqueiras · "bituqueira de parede" | 1,20 | 17 | 1 | 1,09 | gastou < R$ 5 | **+20% → 1,44** (sem dados após 06/10 — conferir estado) |
| L3070-B · "lixeira basculante 50 litros" | 1,20 | 460 | 2 | 2,44 | gastou < R$ 5 | **+20% → 1,44** |
| 6B · "lixeira banheiro 7 litros" | 1,50 | 1.196 | 1 | 2,30 | gastou < R$ 5 | **+20% → 1,80** |
| 6B · "lixeira inox para pia de cozinha" | 1,50 | 788 | 14 | 16,18 | nenhuma (14 cli < 15; 3% do preço) | não mexer |
| auto PXP · substitutes | 1,32 | 2.879 | 3 | 3,03 | gastou < R$ 5 | **+20% → 1,58** |
| auto PXP · loose | 1,32 | 478 | 7 | 5,91 | nenhuma | não mexer |
| auto EGC (pausada O6) · 3 segmentos | — | — | 6 | 4,93 | gastou < R$ 5 | não se aplica a campanha pausada |

Condição "só se o ACOS da campanha estiver abaixo do Máximo": nenhuma dessas campanhas vendeu em 30 dias, então o ACOS é indefinido. Leitura adotada: **indefinido não é "acima do Máximo"**, logo a regra se aplica. É a leitura que a assessoria usava na prática (gerações o1/o2/o3 subiram lance por essa regra).

### 2.4 Produto Indicado — vitalício por alvo
| PI · alvo | Lance | Cli vit | Custo | Compras | Regra Henrique |
|---|---:|---:|---:|---:|---|
| P3070 · `asin="B0CYWMQ93Y"` | 0,90 | 18 | 17,10 | 0 | **PAUSAR alvo** (> 15 cli sem venda) |
| P3070 · `B09YDLC69D` | 1,10 | 16 | 21,64 | 0 | já pausado (O6-004) |
| P3070 · `B0BHMZBZW9` | 1,10 | 14 | 16,38 | 0 | nada ainda (dispara em 16) |
| P3070 · `B0F4T8FCDD` | 1,10 | 11 | 13,75 | 0 | nada |
| PXM · campanha toda gastou R$ 2,52 em 30d | 1,10 / 0,90 | — | — | 1 | **+20% no lance padrão de todas as segmentações → 1,32 / 1,08** |
| L2030-B · campanha gastou R$ 5,05 | 0,78 | — | — | 0 | R$ 5,05 ≥ 5 → não dispara (por 5 centavos) |
| Nenhum alvo com ACOS > 18% nas três PIs | | | | | — |

### 2.5 Monitoramento semanal (pausar acima do dobro do Máximo)
Nenhuma campanha acima de 36%. Maior ACOS com venda: PI P3070 13,0%.

---

## 3. Leitura honesta: onde cada método é mais agressivo

| Frente | Playbook (O7 original) | Henrique (PDF) | Quem vai mais longe |
|---|---|---|---|
| Geral com ACOS 4,4% / 4,2% | +20% em close e substitutes | **não mexer** (abaixo do Máximo) | **Playbook** |
| Manuais com gasto < R$ 5 | nada (Radar exige falta de entrega + amostra) | **+20% automático** em 5 palavras | **Henrique** |
| Auto PXP substitutes | VIGIA (checkpoint 15 cli) | +20% | Henrique |
| PI PXM | Radar +20% | +20% em massa | iguais |
| Alvo B0CYWMQ93Y | pausar | pausar | iguais |
| Orçamento | nenhum (não é a restrição) | +100% PXM · +20% P3070 | Henrique, **sem efeito prático** |
| Negativações | ASIN B076VYNP9W · "dourada" | não existe no PDF | Playbook |
| Estratégia de lance | encerrar piloto | não existe no PDF | Playbook |
| **Réguas de ACOS** | 18% / 9% fixos | **margem média bruta / metade** | **Henrique** — ver §4 |

**Conclusão:** a sensação de "não mexemos mais em lance" vem de dois pontos concretos: (1) o Playbook aposentou o "+20% em quem gastou < R$ 5", e com isso as manuais pequenas ficaram paradas por 3 ciclos; (2) as réguas de ACOS ficaram fixas em 18/9 enquanto a margem real subiu. Na Geral, ao contrário, o Playbook já é mais agressivo que a régua original.

---

## 4. O ponto mais importante do PDF: a régua de ACOS é calculada, não fixa

Henrique: **ACOS Máximo = margem média bruta dos últimos 30 dias (Gestor Seller) · Objetivo = metade.**

Dados internos disponíveis (margem **líquida** do Registro_Vendas, após tarifa, frete real e imposto):
- Setembro fechado: lucro R$ 8.833,58 sobre R$ 34.686,79 acumulados → **25,5%**
- Era 23/09–12/10: **25,9%**

Pela fórmula do Henrique, mesmo com a margem líquida (mais conservadora que a bruta do Gestor Seller), as réguas seriam **Máximo ≈ 25% · Objetivo ≈ 12,5% · Emergência ≈ 50%**, não 18 / 9 / 36. Com ACOS da Era em 5,4%, a conta estaria a **menos da metade do Objetivo recalculado**.

**Não aplicar sem confirmação.** Parâmetro de plataforma só entra com print: LEO abre o Gestor Seller (30 dias), confere a margem média bruta e manda o print. Com o número confirmado, as réguas mudam no Parâmetros §1 e todo o diagnóstico da O7 é relido contra elas (nada muda de categoria, mas a folga para escalar aumenta).

---

## 5. Lista G refeita — para aprovação item a item

| # | Ação | Lance atual → sugerido · variação · motivo | Sustentação | Conf. | Conflito com decisão resolvida? |
|---|---|---|---|---|---|
| G1 | **ESCALAR** Geral close-match | 0,54 → **0,65** · +20% · ACOS 4,4% em 179 cli, 8 compras | Playbook | MÉDIA | não (Henrique diria "não mexer"; Playbook permite) |
| G2 | **ESCALAR** Geral substitutes | 0,45 → **0,54** · +20% · ACOS 4,2% em 131 cli, 5 compras | Playbook | MÉDIA | não |
| G3 | **PAUSAR ALVO** PI P3070 `asin="B0CYWMQ93Y"` | 18 cli vit / R$ 17,10 / 0 | **ambos** | **ALTA** | não |
| G4 | **NEGATIVAR ASIN** `B076VYNP9W` na Geral | 20 cli / R$ 9,37 / 0 em 30d | Playbook | MÉDIA | não |
| G5 | **NEGATIVAR frase** "dourada" na Geral | 3 cli / 0; Winnet não vende dourado | Playbook | ALTA | não |
| G6 | **ENCERRAR PILOTO** 6B e L3070-B | dinâmico → **fixo** · contrato O6-010, 2 Eras sem diferença | Playbook | ALTA | não |
| G7 | **PROMOVER PARA MANUAL** exata "lixo banheiro" na 6B | lance **0,80** · L1618-T + L2025-T · 2 compras na Geral a CPC 0,73 | Playbook (funil) | MÉDIA | não |
| G8 | **RADAR** PI PXM — todas as segmentações | 1,10 → **1,32** e 0,90 → **1,08** · +20% · campanha gastou R$ 2,52 em 30d, 3 compras vitalícias em 12 cli | **ambos** | **ALTA** (sobe de MÉDIA: os dois métodos convergem) | não |
| **G9** | **RADAR** manuais — regra "< R$ 5 → +20%" | Extintor 2,60 → **3,12** · Cinzeiros 1,60 → **1,92** · Bituqueiras 1,20 → **1,44** · L3070-B 1,20 → **1,44** · 6B "lixeira banheiro 7 litros" 1,50 → **1,80** | Henrique | BAIXA–MÉDIA | **SIM** — reativa regra aposentada (Playbook §33). Custo em risco: R$ 8 em 30 dias somados. Ressalvas: Extintor já aparece no topo em 76% das impressões (143 impr = pouca busca, não pouco lance); "7 litros" tem CTR 0,08% (1 clique em 1.196 impr) — lance maior compra impressão, não clique |
| **G10** | **RADAR** auto PXP substitutes | 1,32 → **1,58** · +20% · gastou R$ 3,03 | Henrique | BAIXA | **SIM** — campanha está em VIGIA (10/15 cli sem venda em 30d); subir lance durante vigia contradiz o checkpoint |
| **G11** | Orçamento PI PXM 40 → 80 · PI P3070 20 → 24 | regra 8 do PDF | Henrique | — | **SIM** — decisão da O4 (orçamento não consumido não é alavanca). **Recomendação: não executar**; se o LEO quiser seguir o PDF à letra, é inócuo (PXM usa 0,2% do orçamento; P3070 27%) |
| **G12** | **Réguas de ACOS recalculadas** | 18 / 9 / 36 → **margem média bruta / metade / dobro** (estimativa com margem líquida: ≈ 25 / 12,5 / 50) | Henrique (definição) | — | **decisão de método** — exige print do Gestor Seller (30 dias). É a mudança de maior alcance da lista |
| G13 | Mestra | F89 92,34 → **92,43** na próxima edição | — | ALTA | não |
| G14 | Registro | linhas O7-001… e vereditos da O6 em `dados/PROPOSTA_Registro_O7.csv` (renumerar conforme aprovados) | — | — | não |
| G15 | Promoções | nenhuma até a lista da Black Friday; preço de tabela limpo | Playbook/Memória | ALTA | não |

**O que continua fora, nos dois métodos:** pausar a PI P3070 (13% < Máximo); mexer na loose (9,4%); pausar qualquer produto da Geral; negativar "tramontina" / "guarda chuva"; qualquer desconto.

**Se o LEO aprovar G9 e/ou G10:** registrar nos Parâmetros a reativação da regra "< R$ 5 → +20%" como régua vigente para manuais e autos individuais (com a leitura "ACOS indefinido ≠ acima do Máximo") e riscar a aposentadoria no Playbook §33 e na Memória. É mudança de método; vale uma linha na Memória com a data e o motivo (ciclos curtos demais nas manuais).

---

## 6. Dados que faltam para fechar
1. Vereditos SIM/NÃO de G1 a G12.
2. **Print do Gestor Seller (30 dias) com a margem média bruta** — destrava G12.
3. Estado atual da campanha Bituqueiras (o relatório para em 06/10).
4. Registro de Alterações atual.
5. A foto que o LEO vai mandar (análise pendente).
