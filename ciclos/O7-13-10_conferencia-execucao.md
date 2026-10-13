# O7 13/10 — Conferência da execução (export + prints)

**Fontes:** `relatorios/amazon/o7-13-10/gerenciador_pos-execucao_13-10.csv` (80 campanhas, 10 ativas) · 4 prints `print_pos-exec_*_13-10.png` (Geral segmentações · PI P3070 alvo · PI P3070 orçamento · auto PXP segmentações). Registro: 98 entradas, O7-001…018 em EXECUTADA - EM MATURAÇÃO (13/10).

## Estado em 13/10 (1ª rodada de evidências)

| Linha | Ação | Evidência | Status |
|---|---|---|---|
| O7-001 | Geral close 0,54 → 0,65 | print Geral: "Correspondência aproximada R$ 0,65" | ✅ CONFERIDA |
| O7-002 | Geral substitutes 0,45 → 0,54 | print Geral: "Substitutos R$ 0,54" (loose e complements em 0,45) | ✅ CONFERIDA |
| O7-003 | PI P3070 alvo B0CYWMQ93Y pausado | print: alvo "Pausado", campanha ativa | ✅ CONFERIDA |
| O7-004 | Geral negativar ASIN B076VYNP9W | print "Produtos negativos": `asin="B076VYNP9W"` presente (4 ASINs negativos no grupo: B0C5PLHDRL, B0BHXCJD1P, B076PLZ1PV, B076VYNP9W) | ✅ CONFERIDA |
| O7-005 | Geral negativar frase "dourada" | print "Palavras-chave negativas": "dourada" · Frase negativa (única palavra negativa do grupo) | ✅ CONFERIDA |
| O7-006a | 6B dinâmico → fixo | print 2ª rodada: "Lances fixos" na configuração da campanha (o export da 1ª rodada saiu antes da mudança) | ✅ CONFERIDA |
| O7-006b | L3070-B dinâmico → fixo | export: "Lances fixos" | ✅ CONFERIDA |
| O7-007 | 6B exata "lixo banheiro" 0,80 | 2º export de palavras da 6B (13/10): exata "lixo banheiro" criada a **0,80** (15ª palavra). O 1º export, de antes da execução, não a tinha | ✅ CONFERIDA |
| O7-008 | PI PXM asin-expanded 1,10 → 1,32 | export de alvos 13/10: 51 alvos asin-expanded a **1,32** | ✅ CONFERIDA |
| O7-009 | PI PXM asin exato 0,90 → 1,08 | export de alvos 13/10: 7 alvos asin a **1,08** (58 alvos no total) | ✅ CONFERIDA |
| O7-010 | Extintor 2,60 → 3,12 | print: "suporte para extintor de incêndio" exata **3,12**; "suporte de extintor chão" segue 2,60 | ✅ CONFERIDA |
| O7-011 | Cinzeiros 1,60 → 1,92 | print: "lixeira com cinzeiro" exata **1,92**; "cinzeiro de chão inox" segue 1,60 | ✅ CONFERIDA |
| O7-012 | Bituqueiras 1,20 → 1,44 | print: "bituqueira de parede" exata **1,44** | ✅ CONFERIDA |
| O7-013 | L3070-B 1,20 → 1,44 | print: "lixeira basculante 50 litros" exata **1,44**; demais exatas 1,20 e frases 1,00 | ✅ CONFERIDA |
| O7-014 | 6B "lixeira banheiro 7 litros" 1,50 → 1,80 | 2º export de palavras da 6B (13/10): exata a **1,80** | ✅ CONFERIDA |
| O7-015 | PXP substitutes 1,32 → 1,58 | print PXP: "Substitutos R$ 1,58" (vaga 1,32 · complementos 1,32 · aproximada 1,10) | ✅ CONFERIDA |
| O7-016 | PI PXM orçamento 40 → 80 | export: R$ 80,00 | ✅ CONFERIDA |
| O7-017 | PI P3070 orçamento 20 → 24 | print + export: R$ 24,00 | ✅ CONFERIDA |
| O7-018 | Réguas de ACOS 25 / 12,5 / 50 | Parâmetros §1, CLAUDE.md, Memória | ✅ REGISTRADA |

**Resultado da 1ª rodada:** 7 ações conferidas no console, 1 registrada em documento, 9 aguardando print, 1 contradita pelo export (estratégia da 6B).

**2ª rodada (5 prints + export de alvos da PI PXM):** +7 conferidas (6B fixa · PI PXM 1,32/1,08 · Extintor 3,12 · Cinzeiros 1,92 · Bituqueiras 1,44 · L3070-B 1,44). **Total: 14 de 17 ações de console conferidas + réguas registradas.** **3ª rodada (2 prints das negativas da Geral): +2 conferidas. Total: 16 de 17.** Falta só a 6B: O7-007 (exata "lixo banheiro" 0,80) e O7-014 ("lixeira banheiro 7 litros" 1,80) — um print resolve as duas.

**Achado novo (print PXP):** a auto PXP tem lances por segmentação que não estavam nos Parâmetros: Correspondência vaga 1,32 · Complementos 1,32 · Substitutos 1,58 (pós) · Correspondência aproximada 1,10. Entram no §3.

**Print da Geral (13/09–12/10):** 82.553 impressões · 471 cliques nas 4 segmentações (close 41.304 / 181 · substitutes 18.995 / 137 · loose 22.252 / 153 · complements 2 / 0).

**Mestra (recebida junto):** F89 92,34 → **92,43** corrigido pelo LEO; P3070 de 11/10 agora a R$ 523,75. Única diferença; validações preservadas. Cópia do repositório atualizada.

## 4ª rodada — export de palavras da 6B
**O7-007 e O7-014 não foram executadas**: o export de 13/10 mostra as 7 exatas a 1,50 e as 7 frases a 1,20, sem a exata "lixo banheiro". O Registro marca as duas como EXECUTADA - EM MATURAÇÃO — **divergência entre Registro e console**. Caminhos: (a) LEO executa as duas e manda novo export; (b) LEO corrige o Registro para APROVADA - AGUARDANDO EXECUÇÃO (Data da execução vazia). Até resolver, o fechamento da O7 fica aberto nessas duas linhas.

**5ª rodada — 2º export da 6B: O7-007 e O7-014 executadas após o aviso. PLACAR FINAL: 17 de 17 ações de console conferidas + réguas registradas. O7 FECHADA em 13/10.** A divergência Registro × console durou o intervalo entre os dois exports; o Registro já estava correto no estado final.

**Vitalício da 6B (export 13/10):** exata "lixeira banheiro 7 litros" 2.051 impr · 8 cli · R$ 14,01 · 1 compra · R$ 265,80 (ACOS 5,3%) — a venda de 31/08. Exata "lixeira inox para pia de cozinha" 1.658 impr · **31 cli · R$ 44,51 · 0** (vigia: 14/15 nos 30d; vitalício bem acima da régua — candidata a pausa na O8 se continuar sem venda). As outras 5 exatas e 5 frases somam 22 impressões.

**Achado do print de negativas:** o grupo da Geral tem 4 ASINs negativos (B0C5PLHDRL, B0BHXCJD1P, B076PLZ1PV de ciclos anteriores + B076VYNP9W da O7) e 1 palavra negativa ("dourada", frase). Inventário de negativas da Geral passa a constar nos Parâmetros.

**Detalhe dos prints da 2ª rodada (lances das demais palavras, para o §3):** L3070-B: exatas "lixeira 50 litros basculante", "lixeira inox basculante grande", "lixeira 80 litros basculante" a 1,20; frases a 1,00. Extintor: "suporte de extintor chão" 2,60. Cinzeiros: "cinzeiro de chão inox" 1,60.


---

## Fechamento (13/10/2026)

17 ações no console conferidas contra 2 exports do Gerenciador, 2 exports de alvos/palavras (PI PXM, 6B ×2), 1 export de anúncios (Bituqueiras) e 11 prints. Réguas de ACOS registradas (O7-018). Registro: 98 entradas, O7-001…018 em EXECUTADA - EM MATURAÇÃO, reavaliar em 27/10 (O8). Parâmetros §1, §3, §4, §5, §8 atualizados; Contexto e Memória atualizados. **Próximos:** monitoramento 20/10 (7 dias pós-execução: Geral 0,65/0,54; manuais +20%; vigia exata "pia de cozinha" 31 cli vitalícios / 0) · **O8 em 27/10** (Era 14–26/10; recalcular réguas de ACOS pela margem 30d; ler O7-001…017).
