# GUIA — PLANILHA MESTRA AMAZON WINNET

## FUNÇÃO DA PLANILHA

A Planilha Mestra é a principal base operacional interna da Amazon Winnet para informações relacionadas a SKUs, preços, custos, tarifas, fretes, classificação logística, margens e registros de vendas.

## VERSÃO ATUAL OFICIAL

Utilize sempre a versão mais recente da Planilha Mestra disponível no Contexto do Project. Não utilize valores de versões antigas ou da memória quando a planilha atual apresentar informação mais recente.

## SIMULADOR

Utilize principalmente para consultar e analisar preço, custos, tarifa Amazon, classe de frete, cenários de frete e margem dos SKUs.

Cada SKU aparece em dois cenários geográficos:

* **São Paulo Interior:** cenário de referência operacional, utilizado para análise e tomada de decisão.
* **RS Capital:** cenário de estresse de frete, utilizado para avaliar a resistência da margem em uma região de maior impacto logístico.

Uma margem inferior no cenário RS não deve, isoladamente, ser interpretada como erro de preço ou problema do SKU.

## CLASSIFICAÇÃO_FRETE

É a referência de classificação logística dos produtos. Regra atual: Pequenos ≤ 5,5 kg; Médios ≤ 18 kg; Grandes > 18 kg, considerando o maior entre peso real e cubado.

Classificações validadas por cotação real devem prevalecer sobre uma inferência automática baseada apenas no peso. Exceções operacionais documentadas também podem prevalecer quando estiverem explicitamente confirmadas como vigentes.

A Planilha Mestra registra e recomenda a classificação logística do produto, mas a cobrança efetivamente apresentada ao cliente é determinada pelo modelo de envio atribuído ao SKU no Seller Central. Quando houver divergência relevante ou após uma reclassificação, deve-se conferir a configuração vigente no Seller Central.

## REGISTRO_VENDAS E LIVRO_VENDAS

São fontes de histórico e acompanhamento de vendas. Respeite as regras operacionais documentadas dentro da própria planilha, com destaque para:

* Nunca utilizar **"Inserir linha"** no Registro_Vendas. Utilizar as linhas vazias já existentes, para preservar fórmulas e estrutura.
* Em pedidos com múltiplos SKUs, registrar **uma linha por SKU**. O frete cobrado e o frete real devem ser registrados somente na primeira linha do pedido; nas demais linhas do mesmo pedido, utilizar zero.
* Em vendas antigas realizadas por preço diferente do atual, utilizar o **preço efetivamente praticado na data daquela venda**, quando conhecido, para evitar distorção histórica de margem e rentabilidade.

## PEDIDOS MULTI-SKU — IDENTIFICAÇÃO

Em pedidos com múltiplos SKUs, repita exatamente o mesmo número do pedido em todas as linhas correspondentes. Isso permite identificar, agrupar e analisar corretamente todas as linhas pertencentes ao mesmo pedido.

Não acrescente sufixos como “1/3”, “2/3” ou “3/3” ao número do pedido.

O frete cobrado do cliente e o frete real do pedido devem permanecer somente na primeira linha do pedido, conforme a regra definida para o Registro_Vendas; nas demais linhas do mesmo pedido, utilizar zero.

## GRAFIAS OFICIAIS DE SKU

Códigos de SKU devem seguir exatamente a grafia oficial presente na base vigente da planilha. Não simplificar hífens, letras ou sufixos.

Exemplos de grafias que já exigiram padronização: **L2450--CZ, SP-PP e SP-FF**. Esses exemplos servem apenas para demonstrar a importância da grafia exata; a base atual deve sempre prevalecer.

## RESUMO

Parte das informações desta aba pode representar um snapshot de uma data específica. Não assuma automaticamente que todos os números do Resumo representam o estado atual da operação. Compare com dados mais recentes quando disponíveis.

## NOVO_PRODUTO

É uma ferramenta de cálculo e classificação para produtos novos. Não presuma que um item simulado nesta área já esteja ativo na Amazon.

## REF_FRETE

É a referência vigente utilizada pela Planilha Mestra para modelos e valores de frete. O arquivo antigo separado de Modelos de Frete não deve ser usado como fonte ativa.

## LISTAS

É uma aba auxiliar utilizada pela estrutura da planilha e não deve ser interpretada como relatório operacional.

## ALTERAÇÕES NA PLANILHA

Não altere automaticamente preços, custos, tarifas, margens, fórmulas, classificação de frete ou registros históricos com base apenas em inferência. Alterações devem partir de dado confirmado ou solicitação explícita.

## CONTROLE DE VERSÃO

Sempre que a Planilha Mestra for modificada de forma relevante, preserve a versão anterior, gere uma nova versão e informe claramente o changelog das alterações realizadas.
