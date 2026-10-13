# O7 13/10 — Checklist de execução no console (G1–G12 aprovados pelo LEO em 13/10)

Ordem pensada para o console: uma campanha por vez, estratégia antes de lance. Marque cada item ao concluir e tire **print de cada tela alterada** (lance novo visível) — o export pós-execução + prints fecham o ciclo.

**Antes de começar:** confira o valor atual na tela. Se for diferente do "atual" abaixo, **não execute** e me avise (Registro: BLOQUEADA - CONFERIR ESTADO).

## 1. Geral Automática DBA-o59/09
- [ ] **O7-001** Segmentação **Correspondência aproximada** (close-match): lance 0,54 → **0,65**
- [ ] **O7-002** Segmentação **Substitutos**: lance 0,45 → **0,54**
- [ ] (não mexer: Correspondência vaga 0,45 · Complementos 0,45 · orçamento 90)
- [ ] **O7-004** Segmentação negativa → **Excluir produto** (ASIN): `B076VYNP9W`
- [ ] **O7-005** Palavra-chave negativa → **frase**: `dourada`

## 2. PI P3070-o228/07
- [ ] **O7-003** Alvo `asin="B0CYWMQ93Y"` (exato, lance 0,90) → **Pausar** o alvo (a campanha fica ativa)
- [ ] **O7-017** Orçamento diário 20 → **24**
- [ ] (não mexer nos lances 1,10 / 0,90 nem nos demais alvos)

## 3. PI PXM-o311/08
- [ ] **O7-008** Todos os alvos **asin-expanded**: 1,10 → **1,32**
- [ ] **O7-009** Todos os alvos **asin exato**: 0,90 → **1,08**
- [ ] **O7-016** Orçamento diário 40 → **80**

## 4. Auto PXP-o311/08
- [ ] **O7-015** Segmentação **Substitutos**: 1,32 → **1,58** (Correspondência vaga fica em 1,32)

## 5. 6B — Lixeiras banheiro-O4 25/08
- [ ] **O7-006a** Configurações da campanha → Estratégia de lances: **Lances dinâmicos (aumento e redução)** → **Lances fixos**
- [ ] **O7-014** Exata "lixeira banheiro 7 litros": 1,50 → **1,80**
- [ ] (não mexer: exata "lixeira inox para pia de cozinha" 1,50 — vigia 14/15)
- [ ] **O7-007** Adicionar palavra-chave **exata** `lixo banheiro`, lance **0,80**, no grupo que anuncia **L1618-T + L2025-T** (se os dois SKUs não estiverem no mesmo grupo, adicionar em cada um)

## 6. Manual Palavra-Chave L3070-B
- [ ] **O7-006b** Estratégia de lances: dinâmicos → **Lances fixos**
- [ ] **O7-013** Exata "lixeira basculante 50 litros": 1,20 → **1,44** (depois da estratégia)

## 7. Extintor Palavra-Chave Exato Manual
- [ ] **O7-010** Exata "suporte para extintor de incêndio": 2,60 → **3,12** (Topo +75% fica)

## 8. Cinzeiros (6C)
- [ ] **O7-011** Exata "lixeira com cinzeiro": 1,60 → **1,92**

## 9. Manual Bituqueiras Space
- [ ] Conferir que a campanha está **ativa** (relatório de 30d parou em 06/10; anúncios de 13/10: SP-PP, SP-FF, SP-T em inserção, SP-01 suspensa)
- [ ] **O7-012** Exata "bituqueira de parede": 1,20 → **1,44**

## 10. Fora do console
- [ ] **O7-018** Réguas de ACOS: Objetivo **12,5%** · Máximo **25%** · Emergência **50%** — já registradas nos Parâmetros §1 (fonte: margem média 30d da Mestra, 25,1%). Print do Gestor Seller (margem bruta, 30 dias) refina quando tiver.
- [ ] Mestra: F89 92,34 → **92,43** na próxima edição.

## Depois de executar, me mande
1. Export do Gerenciador de campanhas (Era 13/10 em diante, ou "hoje") com os lances novos.
2. Prints: segmentações da Geral · alvos da PI P3070 (B0CYWMQ93Y pausado) · PI PXM lances · PXP substitutes · 6B (estratégia + palavras) · L3070-B (estratégia + palavra) · Extintor · Cinzeiros · Bituqueiras · orçamentos PXM e P3070.
3. Registro: colar as 18 linhas de `dados/PROPOSTA_Registro_O7.csv` (linhas 87–104) e, nas executadas, preencher Data da execução + Executado = SIM + Status EXECUTADA - EM MATURAÇÃO.
