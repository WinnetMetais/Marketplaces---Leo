# Memória Operacional — Marketplaces Winnet

Aprendizados consolidados que **não** devem ser reaprendidos a cada sessão.
Complementa (não substitui) o `claude-mem`, que captura memória automática por sessão.

**Regra:** este arquivo guarda **método e aprendizado**, nunca **estado numérico**.
Números vivos ficam em `docs/AMAZON_ADS_PARAMETROS_VIGENTES.md`.

---

## 1. Erros de leitura já cometidos e corrigidos

Cada item abaixo veio de um Teste Real. São armadilhas confirmadas — não repetir.

### Atribuição e soma
- **Não somar** vendas atribuídas de Campanhas + Produtos Anunciados + Termos. São visões do mesmo desempenho.
- **Não deduzir dias** de Ads vs não-Ads porque um agregado bateu com um valor diário do Painel. Coincidência de valor não prova correspondência temporal.
- Vendas atribuídas **maturam**. Sinalizar a limitação sem presumir a direção do viés.

### Impressões e parcela
- **TOS IS (Top-of-Search Impression Share)** é percentual — **proibido inferir o denominador** para reconstruir volume absoluto.
- **TOS IS alto com poucas impressões** não é sinal de força: é nicho pequeno ou entrega baixa.
- **SIS (Search Term Impression Share)** é métrica de **conta**, não de campanha, e **não** é volume de busca.
- Linhas do SIS não se cruzam 1:1 com métricas de campanha.
- No **Relatório de Termos**, tratar impressões com o escopo correto do relatório.

### Termos e alvos
- **ASIN não é termo textual.** ASIN aparecendo no campo "Termo de pesquisa" é segmentação por produto, não busca do cliente.
- **Negativação exige irrelevância semântica demonstrável**, não apenas cliques sem venda.
- Termo vencedor → candidato a Manual. Mas promoção para Manual exige venda comprovada ou evidência externa forte.
- **Produto anunciado ≠ produto comprado.** Halo é real e não invalida a atribuição.

### Campanha e alvo
- **Alvo ruim ≠ campanha ruim.** Em PI a régua é no ALVO. Nunca pausar a campanha por causa de um ASIN.
- Antes de pausar campanha com histórico: janela recente → 30 dias → vitalício → relevância das vendas históricas.
- **Campanhas pequenas** exigem reavaliação própria — a régua padrão pode não caber.

### Orçamento
- Comparar a **soma** dos orçamentos da conta com o gasto agregado **não** prova ausência de restrição. Relatórios contêm campanhas inativas/pausadas e exposições de períodos diferentes; uma campanha individual pode bater no teto em dias específicos.
- Campanha gastando muito abaixo do próprio teto → investigar **entrega/lance/segmentação** antes de mexer no orçamento.

### Financeiro
- **Break-even ACOS não é teto operacional** nem meta de campanha.
- **Eficiência de Ads ≠ lucratividade.** ACOS bom não prova lucro no período.
- **Margem financeira ≠ competitividade de preço.**
- **Capacidade unitária ≠ rentabilidade do período.**
- **`MARGEM SUPORTA ESCALA` não significa `ESCALAR`** — é condição necessária, não suficiente.
- **Tarifa estimada ≠ tarifa auditada** — sempre declarar qual está em uso.
- **Margem simulada ≠ margem registrada.**

### Fontes internas
- `Registro_Vendas` = vendas reais, valores oficiais. Não rebaixar a "provisório".
- `Livro_Vendas` fecha **mensalmente (07/09)**; defasagem de 1–2 meses é normal.
- **Ausência de registro ≠ ausência de venda.** Declarar a lacuna temporal.
- Histórico é **contexto/contrapeso** — nunca soma ao ACOS da janela.

### Priorização
- **Prioridade de investigação ≠ maior ganho esperado.** São critérios distintos.
- Separar **bloqueador da ação específica** de **dado importante mas não bloqueador geral**.
- `Livro_Vendas` desatualizado **não** bloqueia a Ox inteira — bloqueia só as conclusões que dependem dele.

---

## 2. Regras de linguagem obrigatórias

Usar exatamente estas formulações quando a situação ocorrer:

| Situação | Linguagem obrigatória |
|---|---|
| Sem Relatório de Negócios | "A visão Ads está disponível. A separação entre vendas atribuídas a Ads e vendas não atribuídas a Ads não pode ser concluída com segurança sem vendas totais comparáveis do mesmo período." |
| Sem Planilha Mestra | "A performance de Ads sugere possibilidade de escala, mas a decisão financeira fica pendente de validação de margem na Planilha Mestra." |
| Fontes incompatíveis | "Consigo analisar as vendas atribuídas a Ads, mas não consigo calcular com segurança a parcela não atribuída a Ads neste período porque as fontes não estão comparáveis." |
| Orçamento só em agregado | "Não há evidência agregada de restrição generalizada por orçamento." |
| Estratégia de lance desconhecida | "Estratégia de lance precisa ser confirmada antes da execução." |
| `Livro_Vendas` fora de cobertura | "O Livro_Vendas não cobre integralmente este período; não é possível confirmar por ele." |
| Diferença Ads vs total | "vendas não atribuídas a Ads / estimativa de orgânico" — **nunca** "orgânico exato" |

---

## 3. Políticas permanentes

- **Nicho fumo — política de VOCABULÁRIO, não de exclusão:** a Winnet **opera** a linha de coleta de bitucas. Front-end (títulos, bullets, conteúdo visível) usa vocabulário de coleta de resíduos — *"Coletor de Bitucas"*. Vocabulário adjacente a fumo — *cinzeiro*, *bituqueira* — fica restrito a **search terms de backend**, onde é permitido e usado. Termos dessa família em relatórios de pesquisa **não** são candidatos automáticos a negativação: avaliar relevância normalmente.
  - Campanhas **SP-01** e **SP-T** pausadas; reativação vinculada à resolução do caso **21652133321** (agente Rebeca). Caminho: reverter títulos para "Coletor de Bitucas". Precedente: caso **21577340991** confirmou requalificação anterior.
  - ⚠️ *Erro registrado (19/08/2026):* na migração para o Claude Code, esta política foi interpretada como "a Winnet não opera tabaco, negativar tudo". Interpretação **incorreta** — corrigida em 25/08/2026 com o CLAUDE.md original. Negativar essa família por padrão teria eliminado tráfego relevante do catálogo ativo.
- **Trava de execução:** analisar e recomendar. Execução só após aprovação explícita do LEO.
- **Mercado Livre:** entra como **sinal externo** de demanda/preço, não como fonte de decisão Amazon.

### Régua de orçamento — condição de aplicabilidade (O4, 25/08/2026)
ACOS abaixo do Objetivo **não** aciona automaticamente a régua de crescimento de orçamento.
Se a campanha consome uma fração do próprio teto, o orçamento **não é a restrição** e aumentá-lo
não produz efeito. O crescimento sai pelo **lance**. Caso de referência: Geral DBA-o3 com ACOS
6,06% consumindo ~7% de um orçamento de R$ 90/dia — régua não aplicada (O4-011), escalada feita
via lance 0,40 → 0,48 (O4-015).

### Inelegibilidade ≠ falha de desempenho (O4, 25/08/2026)
Campanha pausada por suspensão de anúncio/política sai da leitura de performance: não entra em
contrapeso vitalício, não conta como campanha ruim, não vira evidência de nicho fraco.
Caso de referência: PI SP-01-o228/07.

### Teste de estratégia de lance exige grupo de controle (O4, 25/08/2026)
Ao migrar estratégia (fixo → dinâmico), migrar **uma** estrutura e manter as demais como controle,
para que o veredito do ciclo seguinte seja atribuível. Caso de referência: piloto da 6B (O4-014)
com Cinzeiros, L3070-B, Extintor, EGC e Bituqueiras mantidos em fixo.

### CPC do funil como diagnóstico de leilão (O4, 25/08/2026)
Termo que converte na Automática a CPC abaixo do lance da Manual correspondente indica que a
barreira da Manual **não é força de lance, é vitória de leilão** — o que aponta para estratégia
de lance, não para valor de lance.

### Réguas aposentadas — não ressuscitar
- Regra antiga **"R$5 → +20%"** está **aposentada**, absorvida pela régua de Radar.
- Referências de **20–25 / 30–50 cliques** são apenas históricas. A régua vigente é ~15 cliques.

### Campo Status do Controle Semanal
Usa **somente categorias oficiais** (ex.: `VIGIA`). Nota qualitativa vai no campo **Notas**, nunca no Status.

### Livro_Vendas — atribuição de origem
A classificação Ads/Orgânico no fechamento exige cruzamento com relatórios de publicidade.
Lançamento não classificável é **sinalizado para decisão da Wintech** — nunca inferido.

### Imagens
Geradores de IA têm dificuldade com edição geométrica precisa; **Photopea** é preferido para correção cirúrgica. Lógica de posicionamento funcional em ambientação (ex.: coletor na entrada de bares/hotéis, não no meio do salão).

---

## 4. Notas técnicas recorrentes

- `openpyxl` não recalcula fórmulas; `data_only=True` devolve cache do Excel, que pode estar vazio se o arquivo nunca foi aberto/salvo após edição.
- Gravar com `openpyxl` apaga o valor cacheado de fórmulas preexistentes → **nunca sobrescrever a Mestra original**; gerar cópia.
- Números BR: vírgula decimal, ponto de milhar. Validar antes de somar.
- Preferir `pandas` para totais e conferências, não leitura visual.

---

## 5. Como manter este arquivo

Ao final de cada Ox, anexar em **1. Erros de leitura** qualquer armadilha nova encontrada,
com uma linha objetiva. Não reescrever o histórico — só acrescentar.
