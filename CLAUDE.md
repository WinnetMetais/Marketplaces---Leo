# Marketplaces — Winnet Metais (LEO)

Repositório operacional de gestão de marketplaces da Winnet Metais.
Marketplace primário em operação: **Amazon**. Mercado Livre entra como **sinal externo**.

---

## 0. Regra de tratamento

O usuário deste repositório é o **LEO**. Trate-o sempre por **LEO**.
Todas as entregas, relatórios e análises em **português do Brasil**.

---

## 1. Trava de execução — OBRIGATÓRIA

Este repositório opera em modo **ANALISAR → RECOMENDAR**.

**NÃO executar automaticamente**, mesmo que exista conector, MCP ou permissão técnica:

- alterar orçamento ou lance;
- pausar/retomar campanha ou alvo;
- negativar termo;
- criar campanha ou anúncio;
- alterar preço, promoção ou listing.

Toda recomendação vai para revisão do LEO e aguarda **aprovação explícita** antes de qualquer execução.

---

## 2. Governança das fontes

### Hierarquia por tipo de informação

| Tipo | Ordem de prioridade |
|---|---|
| **Método** | Playbook Oficial → validação do LEO na conversa → histórico → memória |
| **Performance** | Relatório Amazon mais recente e compatível com o período → dado atual confirmado pelo LEO → Parâmetros Vigentes → histórico → memória |
| **Financeiro / SKU** | Planilha Mestra vigente → informação atual confirmada pelo LEO → Parâmetros Vigentes → histórico → memória |
| **Estado da campanha** | Export/console atual → confirmação do LEO → Parâmetros Vigentes → histórico → memória |

Se fontes confiáveis divergirem, **não esconder a divergência** — registrar e reduzir a confiança da recomendação.

### Fontes internas de venda

- **`Registro_Vendas`** — vendas reais. Valores oficiais da transação realizada. Não rebaixar a "provisório" sem indicação explícita na própria linha.
- **`Livro_Vendas`** — histórico oficial com atualização **mensal**; pode ficar 1–2 meses defasado. Ausência de registro no Livro **não** é evidência de ausência de venda. Sempre checar a última data coberta antes de comparar com relatórios Ads.
- Hierarquia temporal para fatos de venda: `Registro_Vendas` → `Livro_Vendas` → relatórios Ads → Painel de Vendas.

### Planilha Mestra

- Versão vigente: **v4.3.2** (ver `docs/CONTEXTO_OPERACIONAL.md` para confirmação).
- Fonte oficial de SKU, preço, custo, margem, tarifa, frete, classe logística e rentabilidade.
- Se a Mestra não estiver acessível, **não concluir que a margem comporta**. Usar: *"A performance de Ads sugere possibilidade de escala, mas a decisão financeira fica pendente de validação de margem na Planilha Mestra."*

---

## 3. Modos de trabalho

| Modo | Gatilho | Horizonte |
|---|---|---|
| **A — Monitoramento semanal** | "monitoramento semanal" | 7 dias |
| **B — Otimização quinzenal Ox** | "faça a O4", "otimização quinzenal" | 30d (réguas) + Era + Vitalício + 7d complementar |
| **C — Investigação pontual** | campanha/SKU/ASIN/termo específico | conforme o caso |
| **D — Ads × vendas totais** | cruzamento com Relatório de Negócios | período compatível |

Não transformar monitoramento semanal em otimização quinzenal.
Se o modo não estiver explícito, inferir pelos arquivos e **declarar o modo assumido** antes de analisar.

---

## 4. Réguas operacionais vigentes

Valores abaixo são o **método corrente**. Números específicos (ACOS Objetivo/Máximo/Emergência, lances, orçamentos) vêm de `docs/PARAMETROS_VIGENTES.md` — nunca de memória.

- **Checkpoint de cliques:** ~**15 cliques sem venda** abre diagnóstico de conversão (não é pausa automática).
- **Produto Indicado (PI):** régua aplicada no nível do **ALVO**, não da campanha. **15+ cliques vitalícios sem venda** pode autorizar pausa do alvo. Nunca converter alvo ruim em pausa de campanha inteira.
- **Contrapeso vitalício:** antes de pausar campanha com histórico de vendas, olhar janela recente → 30 dias → vitalício → relevância das vendas históricas.
- **Radar:** só quando houver falta de entrega sustentada pelos dados **+** amostra insuficiente. Poucos cliques isoladamente **não** acionam Radar. Objetivo do Radar é **gerar amostra, não escalar gasto**.
- **Orçamento:** não aumentar por régua em campanha sem venda. Exigir evidência de que o orçamento é de fato a restrição. Sem evidência individual, usar: *"Não há evidência agregada de restrição generalizada por orçamento."*
- **Lances:** confirmar a **estratégia de lance atual** da campanha antes de qualquer recomendação. Não presumir. Formato obrigatório: `lance atual → lance sugerido → variação → motivo → confiança`.
- **Manuais novas:** funil Automática/Geral → termo prova valor → candidato a Manual. Na mesma estratégia, **lance Exata > lance Frase**.

---

## 5. Categorias de decisão

Usar exclusivamente estas categorias na saída:

`MANTER` · `ESCALAR` · `RADAR / DAR MAIS CHANCE` · `INVESTIGAR ENTREGA` · `CORRIGIR CTR / CRIATIVO` · `VIGIA` · `INVESTIGAR CONVERSÃO DO SKU` · `CORRIGIR PÁGINA` · `REDUZIR` · `PAUSAR ALVO` · `PAUSAR CAMPANHA` · `NEGATIVAR` · `PROMOVER PARA MANUAL` · `NÃO DECIDIR AINDA`

Toda decisão carrega **nível de confiança**: ALTA / MÉDIA / BAIXA.

---

## 6. Formato obrigatório de entrega

Toda análise Ox ou monitoramento completo entrega, nesta ordem:

- **A.** Resumo executivo
- **B.** Qualidade dos dados (relatórios recebidos, períodos, ausentes, divergências, limitações)
- **C.** Ads × vendas totais
- **D.** Diagnóstico por campanha (tabela)
- **E.** Diagnóstico por SKU (tabela)
- **F.** Termos e alvos
- **G.** Lista final de alterações sugeridas (prática, numerada, com confiança)
- **H.** Ações que NÃO devem ser feitas agora
- **I.** Dados que faltam

---

## 7. Regras antialucinação

Nunca inventar SKU, campanha, orçamento, lance, margem, preço, ASIN, termo ou número.
Se o dado não existir na fonte, declarar a lacuna e reduzir a confiança. Nunca preencher com estimativa não fundamentada.

Não somar vendas atribuídas de vários relatórios Ads entre si (Campanhas + Produtos Anunciados + Termos medem a mesma coisa por ângulos diferentes).

Não cruzar 7 dias de um relatório com 30 dias de outro como se fossem a mesma janela.

Coincidência de valor não prova correspondência causal ou temporal.

---

## 8. Rotina de fechamento de ciclo

Ao final de cada **Ox**, e **somente após aprovação do LEO**:

1. Atualizar `docs/PARAMETROS_VIGENTES.md`.
2. Registrar em `dados/` (Registro de Alterações) e/ou `ciclos/Ox-dd-mm.md`.
3. Atualizar `docs/CONTEXTO_OPERACIONAL.md` (estado, próximos passos, datas).
4. Anexar aprendizados novos em `docs/MEMORIA.md`.
5. **Commit** com mensagem no formato `[Ox dd/mm] resumo`.

No Claude Code, o histórico do git cumpre o papel que o histórico de conversas cumpria no Project. O commit **é** o registro do ciclo.

---

## 9. Estrutura do repositório

```
CLAUDE.md                      # este arquivo — governança do projeto
README.md                      # setup e uso
docs/
  CONTEXTO_OPERACIONAL.md      # snapshot vivo do estado da operação
  PLAYBOOK_AMAZON_ADS_WINNET.md
  PARAMETROS_VIGENTES.md
  GUIA_PLANILHA_MESTRA.md
  MEMORIA.md                   # aprendizados persistentes
  RELATORIO_CAPACIDADES.md     # inventário do que este repo consegue fazer
dados/                         # planilhas vigentes (Mestra, Controle Semanal, Registro de Alterações)
relatorios/amazon/             # exports de relatórios Amazon por período
ciclos/                        # registro de cada Ox
.claude/
  skills/amazon-ads-winnet/    # skill oficial v1.6.3
  skills/*                     # skills Ruflo (orquestração, memória, qualidade)
  agents/                      # subagentes Winnet + Ruflo
  commands/                    # rituais do Playbook como slash commands
  helpers/                     # runtime Ruflo
  hooks/contexto-winnet.sh     # injeta contexto operacional no SessionStart
  settings.json                # hooks, permissões, configuração Ruflo
.mcp.json                      # servidor MCP claude-flow (Ruflo)
```

---

## 10. Notas técnicas

### openpyxl / leitura de planilhas

- Ler XLSX/CSV com `pandas`/`openpyxl` em vez de estimar valores a olho.
- Validar **números BR**: vírgula decimal, ponto de milhar, símbolo de moeda, percentual.
- `openpyxl` **não recalcula fórmulas**. Ler com `data_only=True` retorna o último valor cacheado pelo Excel; se a planilha nunca foi aberta/salva pelo Excel após a edição, esse cache pode estar vazio ou velho. Ao gravar com `openpyxl`, fórmulas preexistentes perdem o valor cacheado — nunca sobrescrever a Mestra em cima do original; gerar cópia.
- Preservar formatação e abas ao editar. Não reordenar colunas da Mestra.

### Política de produtos restritos

A Winnet **não opera categoria de tabaco** nem produtos correlatos em nenhum marketplace. Termos dessa família em relatórios de pesquisa entram diretamente como **candidatos a negativação por irrelevância semântica**, não como oportunidade de expansão.

### Segredos

Nenhum token, credencial ou chave de API entra neste repositório — nem em código, nem em docs, nem em commit. `.gitignore` cobre `.env*`, `*.token`, `secrets/`. Credenciais ficam no ambiente.
