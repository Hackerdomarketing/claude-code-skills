#!/bin/bash
# Wrapper para executar scripts do skill-forge com Python 3.12

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PYTHON_CMD="python3.12"

# Verificar se Python 3.12 está instalado
if ! command -v "$PYTHON_CMD" &> /dev/null; then
    echo "❌ Python 3.12 não encontrado. Instale com: brew install python@3.12"
    exit 1
fi

# Verificar se PyYAML está instalado
if ! "$PYTHON_CMD" -c "import yaml" &> /dev/null; then
    echo "⚠️  PyYAML não encontrado. Instalando..."
    "$PYTHON_CMD" -m pip install --break-system-packages pyyaml
fi

# Exibir uso se nenhum argumento
if [ $# -eq 0 ]; then
    cat << 'EOF'
Skill Forge - Criador de Skills para Claude Code

Uso: ./forge.sh <comando> [argumentos]

Comandos disponíveis:
  init <nome> --path <dir>     Inicializa nova skill
  validate <caminho>            Valida estrutura e qualidade
  analyze <caminho>             Analisa e sugere melhorias
  package <caminho> [--output]  Empacota skill em arquivo .skill

Exemplos:
  ./forge.sh init minha-skill --path ~/skills
  ./forge.sh validate ~/skills/minha-skill
  ./forge.sh analyze ~/skills/minha-skill
  ./forge.sh package ~/skills/minha-skill --output ~/dist

Para mais informações: https://github.com/Hackerdomarketing/claude-code-skills
EOF
    exit 0
fi

# Executar comando apropriado
COMMAND=$1
shift

case "$COMMAND" in
    init|validate|analyze|package)
        exec "$PYTHON_CMD" "$SCRIPT_DIR/scripts/forge_$COMMAND.py" "$@"
        ;;
    *)
        echo "❌ Comando desconhecido: $COMMAND"
        echo "Use './forge.sh' sem argumentos para ver ajuda"
        exit 1
        ;;
esac
