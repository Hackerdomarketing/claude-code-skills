# Skill Forge - Criador de Skills para Claude Code

Sistema completo para criar habilidades profissionais para o Claude Code.

## Instalação Rápida

```bash
bash install.sh
```

Isso instalará a skill em `~/.claude/skills/skill-forge/` (disponível em todos os projetos).

## Instalação Manual

1. Copie a pasta `skill-forge/` para `~/.claude/skills/`
2. Torne os scripts executáveis: `chmod +x ~/.claude/skills/skill-forge/scripts/*.py`

## Uso

No Claude Code, use:
- `/skill-forge` - Acionar manualmente
- Ou mencione "criar skill" e o Claude ativará automaticamente

## Funcionalidades

- **forge_init.py** - Inicializa estrutura de nova skill
- **forge_validate.py** - Valida estrutura e qualidade
- **forge_package.py** - Empacota skill para distribuição
- **forge_analyze.py** - Analisa e sugere melhorias

## Usando os Scripts Python

Os scripts requerem Python 3.10+ e PyYAML. Use o wrapper `forge.sh` para facilitar:

```bash
# Ver ajuda
./forge.sh

# Criar nova skill
./forge.sh init minha-skill --path ~/skills

# Validar skill
./forge.sh validate ~/skills/minha-skill

# Analisar skill
./forge.sh analyze ~/skills/minha-skill

# Empacotar skill
./forge.sh package ~/skills/minha-skill --output ~/dist
```

### Requisitos dos Scripts

Se preferir executar os scripts diretamente:

```bash
# Instalar Python 3.12
brew install python@3.12

# Instalar PyYAML
python3.12 -m pip install --break-system-packages pyyaml

# Executar script
python3.12 scripts/forge_init.py minha-skill --path ~/skills
```

## Estrutura

```
├── SKILL.md              # Instruções principais
├── scripts/              # Scripts de gerenciamento
│   ├── forge_init.py
│   ├── forge_validate.py
│   ├── forge_package.py
│   └── forge_analyze.py
└── references/           # Documentação de referência
    ├── arquiteturas.md
    ├── frontmatter-exemplos.md
    ├── padroes-codigo.md
    └── checklist-qualidade.md
```

## Desenvolvimento

Repositório: https://github.com/Hackerdomarketing/claude-code-skills

Para contribuir ou reportar issues, visite o repositório.
