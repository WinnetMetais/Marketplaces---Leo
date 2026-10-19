#!/usr/bin/env python3
"""Cliente mínimo da Amazon Ads API (região NA, conta Winnet) — SOMENTE LEITURA.

Lê credenciais do ambiente: AMZN_ADS_CLIENT_ID, AMZN_ADS_CLIENT_SECRET, AMZN_ADS_REFRESH_TOKEN,
AMZN_ADS_PROFILE_ID (após o primeiro `profiles`). Nunca grava segredos.

Uso:
  ads_api.py profiles
  ads_api.py report campaigns  AAAA-MM-DD AAAA-MM-DD   [--out arquivo.csv]
  ads_api.py report targeting  AAAA-MM-DD AAAA-MM-DD
  ads_api.py report searchterm AAAA-MM-DD AAAA-MM-DD
  ads_api.py report advertised AAAA-MM-DD AAAA-MM-DD

Política do repositório: nenhum endpoint de escrita é chamado por este módulo (CLAUDE.md §1/§15).
Estado: esqueleto ainda NÃO testado contra a API (aguarda aprovação de acesso) — validar na etapa 6.
"""
import argparse, csv, gzip, io, json, os, sys, time, urllib.parse, urllib.request

TOKEN_URL = "https://api.amazon.com/auth/o2/token"
API = "https://advertising-api.amazon.com"

REPORTS = {
    # reportTypeId, groupBy, columns (Sponsored Products, reporting v3)
    "campaigns": ("spCampaigns", ["campaign"], [
        "date", "campaignName", "campaignId", "campaignStatus", "campaignBudgetAmount", "campaignBiddingStrategy",
        "impressions", "clicks", "cost", "purchases14d", "sales14d", "unitsSoldClicks14d", "topOfSearchImpressionShare"]),
    "targeting": ("spTargeting", ["targeting"], [
        "date", "campaignName", "adGroupName", "targeting", "matchType", "keywordBid", "keywordId",
        "impressions", "clicks", "cost", "purchases14d", "sales14d", "unitsSoldClicks14d"]),
    "searchterm": ("spSearchTerm", ["searchTerm"], [
        "date", "campaignName", "adGroupName", "targeting", "matchType", "searchTerm",
        "impressions", "clicks", "cost", "purchases14d", "sales14d", "unitsSoldClicks14d"]),
    "advertised": ("spAdvertisedProduct", ["advertiser"], [
        "date", "campaignName", "adGroupName", "advertisedSku", "advertisedAsin",
        "impressions", "clicks", "cost", "purchases14d", "sales14d", "unitsSoldClicks14d"]),
}


def env(name):
    v = os.environ.get(name)
    if not v:
        sys.exit(f"Falta a variável de ambiente {name} (segredos do ambiente da sessão).")
    return v


def access_token():
    data = urllib.parse.urlencode({
        "grant_type": "refresh_token",
        "refresh_token": env("AMZN_ADS_REFRESH_TOKEN"),
        "client_id": env("AMZN_ADS_CLIENT_ID"),
        "client_secret": env("AMZN_ADS_CLIENT_SECRET"),
    }).encode()
    req = urllib.request.Request(TOKEN_URL, data=data, method="POST",
                                 headers={"Content-Type": "application/x-www-form-urlencoded"})
    with urllib.request.urlopen(req, timeout=60) as r:
        return json.load(r)["access_token"]


def call(method, path, body=None, content_type="application/json", profile=True, raw=False):
    if method not in ("GET", "POST"):
        raise RuntimeError("política: somente leitura")
    if method == "POST" and not path.startswith("/reporting/reports"):
        raise RuntimeError("política: POST permitido só para pedir relatórios")
    headers = {
        "Amazon-Advertising-API-ClientId": env("AMZN_ADS_CLIENT_ID"),
        "Authorization": f"Bearer {access_token()}",
        "Content-Type": content_type,
        "Accept": content_type,
    }
    if profile:
        headers["Amazon-Advertising-API-Scope"] = env("AMZN_ADS_PROFILE_ID")
    data = json.dumps(body).encode() if body is not None else None
    req = urllib.request.Request(API + path, data=data, method=method, headers=headers)
    with urllib.request.urlopen(req, timeout=120) as r:
        return r.read() if raw else json.load(r)


def cmd_profiles(_):
    for p in call("GET", "/v2/profiles", profile=False):
        print(f"profileId={p.get('profileId')}  country={p.get('countryCode')}  tipo={p.get('accountInfo', {}).get('type')}  nome={p.get('accountInfo', {}).get('name')}")


def cmd_report(a):
    rid, group, cols = REPORTS[a.kind]
    ct = "application/vnd.createasyncreportrequest.v3+json"
    body = {
        "name": f"winnet-{a.kind}-{a.start}-{a.end}",
        "startDate": a.start, "endDate": a.end,
        "configuration": {
            "adProduct": "SPONSORED_PRODUCTS", "groupBy": group, "columns": cols,
            "reportTypeId": rid, "timeUnit": "SUMMARY" if a.summary else "DAILY", "format": "GZIP_JSON",
        },
    }
    rep = call("POST", "/reporting/reports", body, content_type=ct)
    report_id = rep["reportId"]
    print(f"relatório pedido: {report_id}", file=sys.stderr)
    for _ in range(90):
        time.sleep(20)
        st = call("GET", f"/reporting/reports/{report_id}", content_type=ct)
        if st.get("status") == "COMPLETED":
            break
        if st.get("status") == "FAILURE":
            sys.exit(f"relatório falhou: {st}")
    else:
        sys.exit("tempo esgotado esperando o relatório")
    with urllib.request.urlopen(st["url"], timeout=300) as r:
        rows = json.load(io.TextIOWrapper(gzip.GzipFile(fileobj=io.BytesIO(r.read())), encoding="utf-8"))
    out = open(a.out, "w", newline="", encoding="utf-8") if a.out else sys.stdout
    w = csv.DictWriter(out, fieldnames=cols, extrasaction="ignore")
    w.writeheader(); [w.writerow(x) for x in rows]
    if a.out:
        out.close(); print(f"{len(rows)} linhas → {a.out}", file=sys.stderr)


if __name__ == "__main__":
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = ap.add_subparsers(dest="cmd", required=True)
    sub.add_parser("profiles").set_defaults(fn=cmd_profiles)
    r = sub.add_parser("report"); r.add_argument("kind", choices=REPORTS); r.add_argument("start"); r.add_argument("end")
    r.add_argument("--out"); r.add_argument("--summary", action="store_true", help="agregado do período em vez de diário")
    r.set_defaults(fn=cmd_report)
    a = ap.parse_args(); a.fn(a)
