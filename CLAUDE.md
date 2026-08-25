# Marketplaces — Winnet Metais (LEO)

Repositório operacional de gestão de marketplaces da Winnet Metais.
Marketplace primário em operação: **Amazon Brasil**. Mercado Livre entra como **sinal externo**.

Catálogo: produtos em **aço inox** — lixeiras, suportes de extintor, coletores de bitucas, cinzeiros, porta-guarda-chuvas e itens relacionados.

Escopo de apoio: Amazon Ads, catálogo, listings, SEO, imagens, performance, promoções, dados, concorrência e estratégia.

---

## 0. Regra de tratamento

O operador deste repositório é o **LEO**. Trate-o sempre por **LEO**.
Todas as entregas, relatórios e análises em **português do Brasil**, salvo quando outro idioma for solicitado ou quando um campo específico da Amazon exigir.

**Conta compartilhada:** o tratamento por LEO é o padrão da conversa, mas não presuma responsabilidade individual. Quando a identidade, a alçada ou o contexto individual de alguém for relevante para a decisão, confirme antes de assumir.

---

## 1. Trava de execução — OBRIGATÓRIA

Este repositório opera em modo **ANALISAR → RECOMENDAR**.

**NÃO executar automaticamente**, mesmo que exista conector, MCP ou permissão técnica:

- alterar orçamento ou lance;
- pausar/retomar campanha ou alvo;
- negativar termo;
- criar campanha ou anúncio;
- alterar preço, promoção ou listing;
- alterar estoque.

Recomendar não é autorizar. Uma ação com impacto financeiro **não** se torna autorizada por ter sido recomendada.

**O Registro de Alterações é a fonte oficial:** uma recomendação só é alteração real quando sua execução estiver explicitamente confirmada em `dados/Registro_Alteracoes_Amazon_Ads_Winnet.xlsx`.

---

## 2. Governança das fontes

### Hierarquia geral

1. Dados e instruções fornecidos na conversa atual
2. Documentos oficiais mais recentes de `docs/` e `dados/`
3. Relatórios/exports em `relatorios/` e sistemas conectados
4. Histórico do git (commits, notas de ciclo)
5. Memória automática (`claude-mem`) — apoio de contexto, **nunca** fonte definitiva para dado variável

### Hierarquia por tipo de informação

| Tipo | Ordem de prioridade |
|---|---|
| **Método** | Playbook Oficial → validação do LEO na conversa → histórico → memória |
| **Performance** | Relatório Amazon mais recente e compatível com o período → dado atual confirmado pelo LEO → Parâmetros Vigentes → histórico → memória |
| **Financeiro / SKU** | Planilha Mestra vigente → informação atual confirmada pelo LEO → Parâmetros Vigentes → histórico → memória |
| **Estado da campanha** | Export/console atual → confirmação do LEO → Parâmetros Vigentes → histórico → memória |

Informações que mudam com o tempo — preços, tarifas, margens, orçamentos, resultados, metas, promoções, status de campanha — **não** são permanentes só por estarem documentadas. Em conflito, prevalece a fonte mais recente e confiável. Se não for possível determinar qual está correta, **sinalizar a divergência antes de concluir** e reduzir a confiança da recomendação.

### Fontes internas de venda

- **`Registro_Vendas`** — vendas reais. Valores oficiais da transação realizada. Fonte **autoritativa** quando divergir do `Livro_Vendas`. Não rebaixar a "provisório" sem indicação explícita na própria linha.
- **`Livro_Vendas`** — histórico oficial com fechamento **mensal**; entre fechamentos fica 1–2 meses defasado. Ausência de registro no Livro **não** é evidência de ausência de venda. Sempre checar a última data coberta antes de comparar com relatórios Ads.
- Hierarquia temporal para fatos de venda: `Registro_Vendas` → `Livro_Vendas` → relatórios Ads → Painel de Vendas.

### Planilha Mestra

- Versão canônica: **v4.3.2** — `dados/Planilha_Mestra_Winnet_v4_3_2.xlsx`.
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

Números específicos vêm de `docs/AMAZON_ADS_PARAMETROS_VIGENTES.md` — nunca de memória. Síntese sempre válida:

- **ACOS:** Objetivo **9%** · Máximo **18%** · Emergência **36%**. Confirmar nos Parâmetros Vigentes antes de aplicar.
- **Diagnóstico primário:** ENTREGA × CONVERSÃO antes de qualquer pausa.
- **Checkpoint de cliques:** ~**15 cliques sem venda** abre diagnóstico de conversão. É diagnóstico, **não** pausa automática.
- **Produto Indicado (PI):** régua no nível do **ALVO**, não da campanha. **15+ cliques vitalícios sem venda** pode autorizar pausa do alvo. Nunca converter alvo ruim em pausa de campanha inteira.
- **Contrapeso vitalício:** antes de pausar campanha com histórico de vendas, olhar janela recente → 30 dias → vitalício → relevância das vendas históricas.
- **Geral Automática** nunca é pausada como campanha comum.
- **Radar:** só quando houver falta de entrega sustentada pelos dados **+** amostra insuficiente. Poucos cliques isoladamente **não** acionam Radar. Objetivo é **gerar amostra, não escalar gasto**. Referência de aumento: ~+20% por ciclo quando justificado — nunca automático.
- **Triagem de termos:** ~3+ cliques sem venda é sinal de **revisão**, não negativação automática.
- **Triagem de ASIN em PI:** ~5+ cliques sem venda é sinal de **revisão**, não exclusão automática.
- **Orçamento:** não aumentar por régua em campanha sem venda. Exigir evidência de que o orçamento é de fato a restrição. Sem evidência individual: *"Não há evidência agregada de restrição generalizada por orçamento."*
- **Lances:** estratégia é **por geração de campanha** — verificar a configuração real antes de alterar. Não presumir. Formato obrigatório: `lance atual → lance sugerido → variação → motivo → confiança`.
- **Manuais novas:** funil Automática/Geral → termo prova valor → candidato a Manual. Na mesma estratégia, **lance Exata > lance Frase**.
- **TOS IS e dados de share:** métrica bruta. **Nunca** inferir teto de demanda, headroom ou volume de mercado a partir deles.

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

Nunca inventar SKU, medida, capacidade, campanha, orçamento, lance, margem, custo, tarifa, preço, ASIN, termo, característica técnica ou política interna da Winnet.
Se o dado não existir na fonte, **declarar a lacuna** e reduzir a confiança. Nunca preencher com estimativa não fundamentada.

Não somar vendas atribuídas de vários relatórios Ads entre si (Campanhas + Produtos Anunciados + Termos medem a mesma coisa por ângulos diferentes).

Não cruzar 7 dias de um relatório com 30 dias de outro como se fossem a mesma janela.

Coincidência de valor não prova correspondência causal ou temporal.

Quando houver falta de dados, baixa confiabilidade, conflito entre fontes ou risco de erro relevante, **sinalizar explicitamente antes** de recomendar qualquer ação.

---

## 8. Rotina de fechamento de ciclo

Ao final de cada **Ox**, e **somente após aprovação do LEO**:

1. Atualizar `docs/AMAZON_ADS_PARAMETROS_VIGENTES.md` conforme a regra de manutenção do próprio documento.
2. Registrar a execução em `dados/Registro_Alteracoes_Amazon_Ads_Winnet.xlsx` e/ou `ciclos/Ox-dd-mm.md`.
3. Atualizar `docs/CONTEXTO_OPERACIONAL.md` (estado, próximos passos, datas).
4. Anexar aprendizados novos em `docs/MEMORIA.md`.
5. **Commit** com mensagem no formato `[Ox dd/mm] resumo`.

No Claude Code, o histórico do git cumpre o papel que o histórico de conversas cumpria no Project. O commit **é** o registro do ciclo.

---

## 9. Estrutura do repositório

```
CLAUDE.md                                  # este arquivo — governança do projeto
README.md                                  # setup e uso
docs/
  PLAYBOOK_OFICIAL_AMAZON_ADS_WINNET_v1.md # O MÉTODO — regras, réguas, rituais
  AMAZON_ADS_PARAMETROS_VIGENTES.md        # DOCUMENTO VIVO — ACOS, lances, ciclo, estado da conta
  GUIA_PLANILHA_MESTRA.md                  # regras de uso da Mestra
  CONTEXTO_OPERACIONAL.md                  # snapshot vivo do estado da operação
  MEMORIA.md                               # aprendizados persistentes
  RELATORIO_CAPACIDADES.md                 # inventário do que este repo consegue fazer
dados/
  Planilha_Mestra_Winnet_v4_3_2.xlsx       # versão canônica
  Controle_Semanal_Amazon_Ads_Winnet.xlsx
  Registro_Alteracoes_Amazon_Ads_Winnet.xlsx
relatorios/amazon/                         # exports Amazon Ads / Seller Central por período
ciclos/                                    # registro de cada Ox
.claude/
  skills/amazon-ads-winnet/                # skill oficial v1.6.3
  skills/*                                 # skills Ruflo (orquestração, memória, qualidade)
  agents/winnet/                           # 8 subagentes da operação
  agents/*                                 # agentes Ruflo (coordenação, consenso, SPARC)
  commands/winnet/                         # rituais do Playbook como slash commands
  helpers/                                 # runtime Ruflo
  hooks/contexto-winnet.sh                 # injeta contexto operacional no SessionStart
  settings.json                            # hooks, permissões, configuração Ruflo
.mcp.json                                  # servidor MCP claude-flow (Ruflo)
```

---

## 10. Planilha Mestra — governança técnica

- **Cadeia de versões preservada.** Cada modificação relevante gera nova versão (v4_3_2 → v4_3_3) mantendo a anterior, com changelog claro. O git complementa, mas **não substitui**, essa convenção.
- Antes de qualquer modificação: **diagnóstico read-only**.
- Trabalhar sempre sobre **cópia**. Nunca editar o arquivo canônico diretamente sem gerar nova versão.
- **`openpyxl` remove dropdowns e validações de dados** — revalidar após toda edição.
- `openpyxl` **não recalcula fórmulas**. Ler com `data_only=True` retorna o último valor cacheado pelo Excel; se a planilha nunca foi aberta/salva pelo Excel após a edição, esse cache pode estar vazio ou velho. Ao gravar, fórmulas preexistentes perdem o valor cacheado.
- Preservar formatação e abas. Não reordenar colunas.
- Validar **números BR**: vírgula decimal, ponto de milhar, símbolo de moeda, percentual. Ler com `pandas`/`openpyxl` em vez de estimar valores a olho.

### `Registro_Vendas` — estrutura

- **Header na linha 6, dados a partir da linha 7.**
- **Nunca usar "Inserir linha"** — utilizar as linhas vazias já existentes, para preservar fórmulas e estrutura.
- Pedidos **multi-SKU**: uma linha por SKU, **mesmo número de pedido** em todas (sem sufixos "1/3", "2/3"). Frete cobrado e frete real **somente na primeira linha**; zero nas demais.
- Vendas antigas: usar o **preço efetivamente praticado na data da venda**, quando conhecido, para não distorcer margem histórica.
- Datas são `datetime` — formatar com `.strftime('%d/%m/%Y')`.
- Iterar colunas 1–15 para a estrutura completa do `Livro_Vendas`.

### Grafias de SKU

Seguir **exatamente** a grafia da base vigente. Não simplificar hífens, letras ou sufixos.
Exemplos que já exigiram padronização: `L2450--CZ`, `SP-PP`, `SP-FF`. A base atual sempre prevalece.

### Cenários do Simulador

Cada SKU aparece em dois cenários: **São Paulo Interior** (referência operacional para decisão) e **RS Capital** (estresse de frete). Margem menor no cenário RS **não** é, isoladamente, erro de preço ou problema do SKU.

### Alterações

Não alterar automaticamente preços, custos, tarifas, margens, fórmulas, classificação de frete ou registros históricos com base apenas em inferência. Alterações partem de **dado confirmado ou solicitação explícita**.

---

## 11. Produtos e imagens

Preservar as características reais dos produtos Winnet. **Não alterar geometria, proporção, componentes, acabamento ou características técnicas** sem solicitação explícita. Diferenciar melhoria visual de modificação física do produto.

Prompts de IA para imagens: sempre em **português**, explicitando o que NÃO mudar — *"mantenha tudo igual"*, *"edite APENAS..."*.

---

## 12. Política — nicho fumo

A Winnet **opera** a linha de coleta de bitucas. A política **não é de exclusão**, é de **posicionamento de vocabulário**:

- **Front-end** (títulos, bullets, conteúdo visível): vocabulário de **coleta de resíduos** — *"Coletor de Bitucas"*.
- **Backend** (search terms): vocabulário adjacente a fumo — *cinzeiro*, *bituqueira* — é permitido e usado.

Termos dessa família em relatórios de pesquisa **não** são candidatos automáticos a negativação. Avaliar relevância normalmente, como qualquer outro termo.

Campanhas SP-01 e SP-T seguem pausadas, com reativação vinculada à resolução do caso **21652133321**.

---

## 13. Tom de trabalho

Analítico, prático, objetivo e orientado à decisão. Priorizar problemas e oportunidades pelo **impacto esperado**. Comunicação concisa e direta, especialmente em textos para terceiros. Evitar recomendação genérica quando houver dado suficiente para análise específica.

---

## 14. Decisões resolvidas

Correções metodológicas são adotadas **permanentemente**. Não re-litigar decisão já resolvida.
Contradições e lacunas de método devem ser registradas, resolvidas e **fechadas explicitamente** antes de finalizar a documentação.

---

## 15. Segredos

Nenhum token, credencial ou chave de API entra neste repositório — nem em código, nem em docs, nem em commit. `.gitignore` cobre `.env*`, `*.token`, `*.pem`, `*.key`, `secrets/`. Credenciais ficam no ambiente.
