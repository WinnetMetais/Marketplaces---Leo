#!/usr/bin/env bash
# Instala GLOBALMENTE (no usuario) a stack de agentes usada neste repositorio.
# Rode uma vez por maquina. Requer Node >= 20 e o CLI do Claude Code.
#
#   bash scripts/instalar-stack-global.sh
#
set -euo pipefail

echo "=============================================="
echo " Stack Marketplaces Winnet — instalacao global"
echo "=============================================="
echo

command -v node >/dev/null || { echo "ERRO: Node.js nao encontrado. Instale Node >= 20."; exit 1; }
echo "Node: $(node -v)"
command -v claude >/dev/null && echo "Claude Code: $(claude --version 2>/dev/null | head -1)" || echo "AVISO: CLI 'claude' nao encontrado no PATH."
echo

# --- 1. find-skills (vercel-labs) — descoberta e instalacao de skills sob demanda
echo "[1/3] find-skills (vercel-labs)..."
npx -y skills@latest add https://github.com/vercel-labs/skills/tree/main/skills/find-skills -g -y \
  || echo "  ! falhou — rode manualmente: npx skills add vercel-labs/skills -g"
echo

# --- 2. claude-mem (thedotmack) — memoria persistente entre sessoes
echo "[2/3] claude-mem (thedotmack)..."
npx -y claude-mem@latest install \
  || echo "  ! falhou — alternativa dentro do Claude Code: /plugin marketplace add thedotmack/claude-mem  &&  /plugin install claude-mem"
echo "  Para ligar o worker de memoria:  npx claude-mem start"
echo

# --- 3. Ruflo (ruvnet) — orquestracao de agentes
echo "[3/3] Ruflo (ruvnet)..."
echo "  O scaffold do Ruflo JA esta versionado neste repositorio"
echo "  (.claude/agents, .claude/commands, .claude/skills, .claude/helpers, .mcp.json)."
echo "  Nao rode 'npx ruflo init' na raiz: ele sobrescreve o CLAUDE.md do projeto."
echo
echo "  Para o CLI global do Ruflo (opcional):"
echo "      npm install -g ruflo@latest"
echo "  Para os plugins via marketplace, dentro do Claude Code:"
echo "      /plugin marketplace add ruvnet/ruflo"
echo "      /plugin install ruflo-core@ruflo"
echo "      /plugin install ruflo-swarm@ruflo"
echo

# --- Skill oficial do projeto
echo "Skill do projeto: .claude/skills/amazon-ads-winnet/SKILL.md (v1.6.3) — carrega automaticamente."
echo
echo "=============================================="
echo " Concluido. Reinicie o Claude Code."
echo " Confirme com /context na primeira sessao."
echo "=============================================="
