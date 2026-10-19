# Amazon Ads API - obter refresh token (roda no PC do LEO, PowerShell)
# Nao grava nada em disco. Nenhum valor deve ir para o chat nem para o repositorio.
# Uso: botao direito > "Executar com o PowerShell", ou:  powershell -ExecutionPolicy Bypass -File .\obter_refresh_token.ps1

$clientId = Read-Host "Client ID (Login with Amazon)"
$clientSecret = Read-Host "Client Secret" -AsSecureString
$secretPlain = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($clientSecret))
$redirect = "https://www.amazon.com"

$authUrl = "https://www.amazon.com/ap/oa?client_id=$clientId&scope=advertising%3A%3Acampaign_management&response_type=code&redirect_uri=" + [uri]::EscapeDataString($redirect)
Write-Host ""
Write-Host "1) Vai abrir o navegador. Entre com a conta de anuncios da Winnet e clique em Permitir."
Write-Host "2) Depois do redirecionamento, copie a URL inteira da barra do navegador (comeca com https://www.amazon.com/?code=...)."
Start-Process $authUrl
$redirUrl = Read-Host "3) Cole aqui a URL de redirecionamento"

if ($redirUrl -notmatch "code=([^&]+)") { Write-Host "Nao achei o parametro code= na URL. Rode de novo."; exit 1 }
$code = $Matches[1]

$body = @{ grant_type = "authorization_code"; code = $code; redirect_uri = $redirect; client_id = $clientId; client_secret = $secretPlain }
try {
  $resp = Invoke-RestMethod -Method Post -Uri "https://api.amazon.com/auth/o2/token" -Body $body -ContentType "application/x-www-form-urlencoded"
} catch {
  Write-Host "Falha na troca do codigo: $($_.Exception.Message)"; exit 1
}
Write-Host ""
Write-Host "REFRESH TOKEN (copie para o segredo AMZN_ADS_REFRESH_TOKEN do ambiente do Claude Code):"
Write-Host $resp.refresh_token
Write-Host ""
Write-Host "Nao cole este valor no chat nem em arquivo do repositorio. Feche esta janela depois de copiar."
