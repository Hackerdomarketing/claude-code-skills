#!/bin/bash
set -e

SKILL_NAME="skill-forge"
SKILL_DIR="$HOME/.claude/skills/$SKILL_NAME"
SOURCE_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "🔧 Instalando $SKILL_NAME..."

# Criar diretório se não existir
mkdir -p "$SKILL_DIR"

# Copiar arquivos
echo "📦 Copiando arquivos..."
cp -r "$SOURCE_DIR"/* "$SKILL_DIR/"

# Tornar scripts executáveis
chmod +x "$SKILL_DIR"/scripts/*.py

echo "✓ Skill instalada em: $SKILL_DIR"
echo "✓ Use: /skill-forge no Claude Code para criar novas skills"
echo ""
echo "📝 Para testar, digite '/skill-forge' no Claude Code"
