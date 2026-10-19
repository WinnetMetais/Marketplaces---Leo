# Amazon Ads API — integração do repositório (decisão do LEO, 19/10/2026)

Objetivo: o Code puxar sozinho os relatórios de Ads (Gerenciador, 30d, termos, vitalício por alvo) para monitoramentos e Ox. **Uso somente de leitura por política** (CLAUDE.md §1 e §15): nenhum endpoint de escrita é chamado, mesmo que o token permita. Execução no console segue com o LEO.

**Nenhum segredo entra neste repositório.** Tudo fica nos segredos do ambiente da sessão (menu do ambiente na barra de título → Editar → segredos de rede / variáveis). Documentação oficial da Amazon: https://advertising.amazon.com/API/docs/en-us/guides/onboarding/overview

## Etapas

| # | Etapa | Quem | Status |
|---|---|---|---|
| 1 | Criar perfil de segurança **Login with Amazon** (gera Client ID e Client Secret) | LEO | ✅ 19/10 — app "Winnet Ads API", redirect https://www.amazon.com; aparece em My Apps sem escopos (esperado) |
| 2 | **Pedir acesso à Amazon Ads API** — botão "How to get Ads API access" → Anunciante direto → perfil "Vendedor da Amazon" → escopo "Publicidade" | LEO | ✅ enviado para revisão em 19/10 |
| 3 | Aguardar aprovação da Amazon (relatos: 1 a 3 dias úteis) | Amazon | aguardando desde 19/10 |
| 4 | Autorizar a conta de anúncios e gerar o **refresh token** (script `obter_refresh_token.ps1`, roda no PC do LEO) | LEO, guiado pelo Code | após 3 |
| 5 | Guardar os 3 segredos no ambiente: `AMZN_ADS_CLIENT_ID`, `AMZN_ADS_CLIENT_SECRET`, `AMZN_ADS_REFRESH_TOKEN` | LEO | após 4 |
| 6 | Code testa `ads_api.py profiles` em sessão nova, anota o `AMZN_ADS_PROFILE_ID` (perfil BR) e passa a puxar relatórios | Code | após 5 |

### Etapa 1 — perfil Login with Amazon
1. Entrar em https://developer.amazon.com com a conta Amazon da Winnet (a mesma do Seller Central / Ads, ou uma conta de desenvolvedor da empresa).
2. Menu **Login with Amazon** → **Create a New Security Profile**.
3. Nome sugerido: `Winnet Ads API`. Descrição livre. URL de política de privacidade: pode ser o site da Winnet.
4. Salvar. Abrir o perfil criado → **Web Settings** → **Edit** → em **Allowed Return URLs** adicionar `https://www.amazon.com` (usado só na autorização manual da etapa 4). Salvar.
5. Anotar **Client ID** e **Client Secret** (botão "Show Secret") em lugar seguro **fora** deste repositório e **fora** do chat. Eles vão direto para os segredos do ambiente na etapa 5.

### Etapa 2 — pedir acesso à API
O formulário **não** fica no menu de campanhas. Ele vive no **Advanced tools center** (painel de desenvolvedor do Amazon Ads):
1. Entrar em advertising.amazon.com **com o mesmo e-mail usado na etapa 1** (isso importa: o link de aprovação só funciona logado nessa mesma conta).
2. Abrir **https://advertising.amazon.com/developer/overview** (Advanced tools center). Se pedir para escolher a conta de anúncios, escolher a Winnet.
3. Em **My Apps** o app da etapa 1 já aparece listado (sem escopos). Clicar no botão azul **"How to get Ads API access"**, logo acima do card do app, e seguir o caminho de **Direct Advertiser** (anunciante que usa a API para a própria conta). **Não** usar o "Create app" da seção "You are not an approved AAPN partner" — isso é para parceiros/agências.
4. Formulário real (19/10): relacionamento = **Vendedor da Amazon** (não "Fornecedor", que é Vendor Central); duas caixas de texto (soluções planejadas / processos a automatizar — respondidas como coleta de relatórios para análise interna, sem automação de alterações); escopo = **Publicidade** apenas ("Provedor de dados" desmarcado); aceite do contrato. Campos relatados por quem fez em 2025/26: razão social, site da empresa começando com `https://`, país de registro (Brasil), descrição do uso (ex.: "relatórios de desempenho das próprias campanhas Sponsored Products para análise interna") e o **Client ID** do perfil Login with Amazon da etapa 1.
5. Enviar. A resposta vem por e-mail (relatos de 1 a 3 dias úteis). Guardar o e-mail.
6. **Após a aprovação:** o e-mail traz um link para **atribuir o acesso ao app Login with Amazon** ("assign API access"). Abrir **logado com o mesmo e-mail**; se outra conta abrir, o link se invalida e é preciso escrever para ads-api-onboarding@amazon.com. Documentação: https://advertising.amazon.com/API/docs/en-us/guides/onboarding/apply-for-access e .../onboarding/assign-api-access.

Páginas oficiais não puderam ser abertas pelo Code em 19/10 (rede bloqueia advertising.amazon.com); caminho acima vem da discussão oficial em github.com/amzn/ads-advanced-tools-docs (#161). Rótulos de botão podem variar.

### Etapa 4 — autorização e refresh token (só após aprovação)
No PC do LEO (Windows, PowerShell), rodar `scripts/amazon_ads/obter_refresh_token.ps1`. O script:
- monta o link de autorização (`https://www.amazon.com/ap/oa?...&scope=advertising::campaign_management`), abre no navegador;
- o LEO entra com a conta de anúncios e autoriza; a Amazon redireciona para `https://www.amazon.com/?code=...&scope=...`;
- o LEO cola **no PowerShell** (não no chat) a URL de redirecionamento; o script troca o código pelo **refresh token** em `https://api.amazon.com/auth/o2/token` e mostra o valor na tela, para copiar direto para os segredos do ambiente.

O código de autorização vale poucos minutos; se expirar, rodar de novo.

### Etapa 6 — teste
Em sessão nova (os segredos entram no início da sessão):
```
python3 scripts/amazon_ads/ads_api.py profiles
```
Deve listar o perfil com `countryCode = BR`. O `profileId` vai para o segredo `AMZN_ADS_PROFILE_ID`. A partir daí: `ads_api.py report campaigns 2026-10-13 2026-10-19` etc. (ver `--help`).

## Região
Brasil pertence à região **NA** da Ads API: endpoint `https://advertising-api.amazon.com`, autorização em `https://www.amazon.com/ap/oa`, token em `https://api.amazon.com/auth/o2/token`.
