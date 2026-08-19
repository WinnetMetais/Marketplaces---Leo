# Memória Operacional — Marketplaces Winnet

Aprendizados consolidados que **não** devem ser reaprendidos a cada sessão.
Complementa (não substitui) o `claude-mem`, que captura memória automática por sessão.

**Regra:** este arquivo guarda **método e aprendizado**, nunca **estado numérico**.
Números vivos ficam em `docs/PARAMETROS_VIGENTES.md`.

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

- **Tabaco e correlatos:** a Winnet não opera essa categoria em nenhum marketplace. Termos dessa família são candidatos diretos a negativação por irrelevância semântica — nunca oportunidade de expansão.
- **Trava de execução:** analisar e recomendar. Execução só após aprovação explícita do LEO.
- **Mercado Livre:** entra como **sinal externo** de demanda/preço, não como fonte de decisão Amazon.

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
