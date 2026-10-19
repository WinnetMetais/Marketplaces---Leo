# Amazon Ads API — integração do repositório (decisão do LEO, 19/10/2026)

Objetivo: o Code puxar sozinho os relatórios de Ads (Gerenciador, 30d, termos, vitalício por alvo) para monitoramentos e Ox. **Uso somente de leitura por política** (CLAUDE.md §1 e §15): nenhum endpoint de escrita é chamado, mesmo que o token permita. Execução no console segue com o LEO.

**Nenhum segredo entra neste repositório.** Tudo fica nos segredos do ambiente da sessão (menu do ambiente na barra de título → Editar → segredos de rede / variáveis). Documentação oficial da Amazon: https://advertising.amazon.com/API/docs/en-us/guides/onboarding/overview

## Etapas

| # | Etapa | Quem | Status |
|---|---|---|---|
| 1 | Criar perfil de segurança **Login with Amazon** (gera Client ID e Client Secret) | LEO | pendente |
| 2 | **Pedir acesso à Amazon Ads API** no console de anúncios (formulário usa o Client ID da etapa 1) | LEO | pendente |
| 3 | Aguardar aprovação da Amazon (dias a semanas) | Amazon | — |
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
1. No console do **Amazon Ads** (advertising.amazon.com), com o usuário administrador da conta Winnet, abrir o formulário de acesso à API (link no documento de onboarding acima, seção "Apply for access"; o console também exibe a opção no menu da conta).
2. Preencher como **anunciante usando a API para a própria conta** (não como agência/ferramenta de terceiros).
3. Informar o **Client ID** da etapa 1 quando o formulário pedir.
4. Enviar. A Amazon responde por e-mail. Guardar o e-mail de aprovação.

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
