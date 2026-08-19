#!/usr/bin/env bash
# SessionStart hook — injeta o contexto operacional Winnet em toda sessao deste repo.
set -uo pipefail
D="${CLAUDE_PROJECT_DIR:-.}"

emit() { printf '%s\n' "$1"; }

emit "=== CONTEXTO OPERACIONAL — MARKETPLACES WINNET (LEO) ==="
emit "Usuario: LEO. Trate-o sempre por LEO neste repositorio."
emit "Idioma padrao das entregas: portugues do Brasil."
emit "Trava vigente: ANALISAR e RECOMENDAR. Nao executar alteracoes em Ads,"
emit "precos, listings ou promocoes sem aprovacao explicita do LEO."
emit ""

if [ -f "$D/docs/CONTEXTO_OPERACIONAL.md" ]; then
  emit "--- docs/CONTEXTO_OPERACIONAL.md (estado atual) ---"
  sed -n '1,80p' "$D/docs/CONTEXTO_OPERACIONAL.md"
  emit ""
fi

if [ -f "$D/docs/MEMORIA.md" ]; then
  emit "--- docs/MEMORIA.md (aprendizados persistentes) ---"
  sed -n '1,60p' "$D/docs/MEMORIA.md"
  emit ""
fi

emit "--- Inventario de dados ---"
for dir in dados relatorios; do
  if [ -d "$D/$dir" ]; then
    n=$(find "$D/$dir" -type f ! -name 'README.md' ! -name '.gitkeep' 2>/dev/null | wc -l | tr -d ' ')
    emit "$dir/: $n arquivo(s)"
    find "$D/$dir" -type f ! -name 'README.md' ! -name '.gitkeep' 2>/dev/null | sed "s|$D/|  - |" | head -25
  fi
done
emit ""
emit "Ultimo ciclo registrado:"
git -C "$D" log --oneline --grep='^\[O' -1 2>/dev/null || emit "  (nenhum commit de ciclo [Ox dd/mm] ainda)"
emit "=== FIM DO CONTEXTO ==="
