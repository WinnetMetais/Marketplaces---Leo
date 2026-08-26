# ACHADOS OPERACIONAIS — CONTA AMAZON WINNET

**Data:** 26/08/2026 · **Origem:** investigação Modo C da seca de vendas 21–25/08
**Fontes:** Business Report por data (19–25/08) · Business Report por ASIN (19–25/08) · Relatórios Ads 30d (25/07–23/08) · Planilha Mestra v4.3.2

> Documento de conhecimento. Números medidos estão marcados como tal; inferências estão marcadas como inferência e precisam de confirmação.

---

## 1. Baseline medido da conta

| Métrica | Valor | Janela |
|---|---:|---|
| Sessões/dia | 37,3 | 28/07–24/08 |
| Sessões/dia | 46,1 | 19–25/08 (+23,7%) |
| Pedidos/dia | 0,64 | 28/07–24/08 |
| Unidades/dia | 1,11 | 28/07–24/08 |
| Faturamento/dia | R$ 475,14 | 28/07–24/08 |
| **Taxa de conversão (pedidos/sessão)** | **1,72%** | 28/07–24/08 |
| ASINs ativos recebendo tráfego | 74 | 19–25/08 |

**Consequência aritmética da conversão de 1,72%:** são necessárias **~58 sessões** para *esperar* 1 venda em um ASIN. Guardar este número — ele é a régua de amostra real da conta.

---

## 2. ACHADO PRINCIPAL — o tráfego está pulverizado

Medido em 19–25/08: **323 sessões distribuídas em 74 ASINs.**

| | |
|---|---:|
| Média por ASIN (7 dias) | 4,4 sessões |
| **Mediana** | **2 sessões** |
| ASINs com ≤3 sessões | 51 (69% do catálogo) |
| ASIN mais visitado | 37 sessões (64% do mínimo necessário) |
| **ASINs que atingiram 58 sessões em 7 dias** | **ZERO** |

**Conclusão:** a seca de 5 dias (21–25/08, 238 sessões, 0 pedidos) **não é falha de conversão — é consequência aritmética da dispersão**. Nenhum produto acumula visitantes suficientes para converter de forma confiável.

**Prova de que as páginas convertem:** os dois ASINs que venderam na janela tinham tráfego mínimo — Coletor de Pilhas 27L vendeu 1 unidade com **4 sessões** (25% de conversão); Lixeira Aro Quadrada 50L vendeu **3 unidades com 1 sessão**. As páginas funcionam. O cliente certo é que raramente chega.

**Diretriz derivada:** o problema estratégico da conta não é converter melhor — é **concentrar tráfego**. Priorizar 8–10 SKUs elevaria cada um de ~4 para ~30 sessões/semana.

---

## 3. IMPLICAÇÃO METODOLÓGICA — calibração da régua de cliques

A régua vigente abre diagnóstico de conversão em **~15 cliques sem venda**.

Com a conversão medida de 1,72%:

| Cliques sem venda | Vendas esperadas | P(zero vendas) |
|---:|---:|---:|
| 15 | 0,26 | **77%** |
| 50 | 0,86 | 42% |
| 170 | 2,92 | 5% |

**Leitura correta:** a régua está certa como **gatilho de diagnóstico** — ela manda investigar, não pausar. O que **não se sustenta** é tratar "15 cliques sem venda" como *evidência* de problema de conversão. Nessa conta, zero venda só vira sinal estatístico por volta de **170 cliques**.

**Caso concreto:** o L1618-T acumulou 50 cliques em 30 dias sem venda. Esperado a 1,72%: 0,86 vendas. Tirar zero é o resultado mais provável, não anomalia.

**Ação sugerida:** revisar a calibração da régua no Playbook considerando a conversão real da conta. Não invalida decisões já tomadas.

---

## 4. Buy Box — descartada como causa

Medido em 19–25/08: **99,21% de Buy Box ponderada por sessão. 71 de 74 ASINs em 100%.**

Exceções irrelevantes: Suporte Extintor 6kg (87,5%), Coletor Bitucas Parede (95,8%), Lixeira Basculante Quadrada 30L (96,2%).

**Não investigar Buy Box como causa de queda de vendas nesta conta** enquanto esse patamar se mantiver.

---

## 5. Halo confirmado — pendência da O4 resolvida

A venda de 20/08 foi **3 unidades × R$ 580,52 = R$ 1.741,56**.

O relatório de Produtos Anunciados atribuiu esse valor ao SKU anunciado **Q2430-A**, cujo preço é R$ 231,21. Os valores não fecham: o anúncio rodou em um produto e o cliente comprou outro — consistente com a hipótese registrada na O4 (3 un da Aro Quadrada 50L / B0H51P391G).

**Regra confirmada:** produto anunciado ≠ produto comprado. O halo é real nesta conta e não invalida a atribuição Ads, mas o valor atribuído **não deve ser lido como venda direta do SKU anunciado**.

---

## 6. Avaliações — a matemática real

Situação: zero avaliações acumuladas, apesar do uso de "Solicitar uma avaliação".

| | |
|---|---:|
| Taxa orgânica típica de avaliação | 1% a 2% dos pedidos |
| Com "Solicitar avaliação" usado bem | ~5% |
| Volume da conta | ~19 pedidos/mês |
| **Avaliações esperadas** | **<1 por mês** |

**O recurso não está falhando — o volume é que é pequeno demais para produzir resultado visível.** Agravante estrutural: o comprador da Winnet é **empresa** (hotel, bar, condomínio, escritório), e comprador B2B avalia muito menos que B2C.

**Alavanca correta para baixo volume: Amazon Vine** — requer Registro de Marca (em andamento). Gera até 30 avaliações por ASIN independentemente do volume de vendas. Priorizar nos SKUs que já têm giro.

**Complementos permitidos:** automatizar "Solicitar avaliação" para 100% dos pedidos (1 por pedido, entre 5 e 30 dias após entrega); insert card neutro na embalagem.

**Proibido — risco de suspensão:** oferecer desconto/brinde/reembolso por avaliação · pedir avaliação positiva ou "5 estrelas" · filtrar insatisfeitos · pedir remoção de avaliação negativa · enviar mensagem própria pedindo avaliação além do recurso oficial.

---

## 7. Glossário — métricas do Business Report

| Métrica | O que é |
|---|---|
| **Sessões** | Visitas únicas à página. Um visitante que abre a página 3× em 24h conta 1 sessão |
| **Visualizações de página** | Quantas vezes a página foi aberta (≥ sessões) |
| **% de sessão de unidade** | Unidades ÷ sessões = taxa de conversão do ASIN |
| **% de Ofertas em destaque** | Percentual do tempo com a Buy Box |
| **Média de contagem de ofertas** | ⚠️ No relatório "Por Data" vem zerada mesmo em dias com venda — **artefato, não sinal** |

**Caminhos no Seller Central:**
- Diário: Relatórios → Negócios → **Por Data** → Vendas e Tráfego
- Por produto: Relatórios → Negócios → **Por ASIN** → Vendas e tráfego por página de detalhes (filho)

---

## 8. Mapeamento SKU ↔ ASIN — INFERÊNCIA A CONFIRMAR

Pelos títulos, os códigos parecem seguir `P` = Pedal + dimensões:

| SKU | Título provável | ASIN | Sessões 19–25/08 |
|---|---|---|---:|
| P3050 | Lixeira Pedal 40L 30x50 | B0H6365DBF | 8 |
| P3060 | Lixeira Pedal 50L 30x60 | B0H4NLBG1Y | 19 |
| P3070 | Lixeira Pedal 60L 30x70 | B0H63FKGPJ | 16 |
| P4080 | Lixeira Pedal 100L 40x80 | B0H63W8G49 | 7 |
| L1618-T | Lixeira c/ Tampa 3L 16x18 | B0H3QQLFFY | 37 |

**Não usar como fato até confirmar na Planilha Mestra.** Se confirmado, a "fila de conversão" da O4 está mirando SKUs com amostra insuficiente para diagnóstico de página — o que reforça a seção 3.

---

## 9. Correções de leitura registradas

- A seca começou em **21/08**, não 19/08. Dias 19 e 20 venderam normalmente. Em todo caso, **precede a O4** (25/08) — as alterações do ciclo não a causaram e não devem ser revertidas por causa dela.
- Tráfego **não caiu** na seca — subiu 23,7%. Toda hipótese de entrega (indexação, ranking, suspensão, campanha parada) está descartada por medição.
