# 📦 Releases - Instalação de Skills

Esta pasta contém versões empacotadas das skills prontas para instalação direta.

## 📥 Arquivo Disponível

### skill-forge.skill (31 KB)
Sistema completo para criar skills profissionais para o Claude Code.

---

## 🚀 Guia de Instalação Completo

### Método 1: Instalação Rápida (Arquivo .skill)

**Ideal para:** Quem quer instalar rapidamente sem clonar o repositório.

#### Passo 1: Download
```bash
# Opção A: Baixar via navegador
# Acesse: https://github.com/Hackerdomarketing/claude-code-skills/blob/main/releases/skill-forge.skill
# Clique em "Download"

# Opção B: Baixar via terminal (se tiver git clone)
cd ~/Downloads
wget https://github.com/Hackerdomarketing/claude-code-skills/raw/main/releases/skill-forge.skill
```

#### Passo 2: Descompactar e Instalar
```bash
# Criar diretório de destino
mkdir -p ~/.claude/skills/skill-forge

# Descompactar o arquivo .skill (é um ZIP)
unzip ~/Downloads/skill-forge.skill -d ~/.claude/skills/skill-forge

# Tornar scripts executáveis
chmod +x ~/.claude/skills/skill-forge/scripts/*.py
chmod +x ~/.claude/skills/skill-forge/*.sh

# Pronto! Skill instalada
echo "✓ Skill instalada em: ~/.claude/skills/skill-forge"
```

#### Passo 3: Verificar Instalação
```bash
# Listar arquivos instalados
ls -la ~/.claude/skills/skill-forge/

# Deve mostrar:
# SKILL.md
# install.sh
# forge.sh
# scripts/
# references/
```

---

### Método 2: Instalação Recomendada (Código-fonte)

**Ideal para:** Desenvolvimento, contribuições, ou ter sempre a versão mais atualizada.

#### Passo 1: Clonar Repositório
```bash
cd ~/Documents
git clone https://github.com/Hackerdomarketing/claude-code-skills.git
cd claude-code-skills
```

#### Passo 2: Executar Script de Instalação
```bash
cd skill-forge
./install.sh
```

O script automaticamente:
- Cria `~/.claude/skills/skill-forge/`
- Copia todos os arquivos necessários
- Configura permissões corretas
- Instala a skill globalmente

#### Passo 3: Verificar
```bash
# Ver ajuda da skill
cd ~/.claude/skills/skill-forge
./forge.sh
```

---

## 🔧 Requisitos do Sistema

### Para Usar a Skill no Claude Code
- **Claude Code VSCode Extension** instalado
- Nenhum requisito adicional (a skill funciona nativamente)

### Para Usar os Scripts Python (Opcional)
Os scripts Python são ferramentas auxiliares opcionais:

```bash
# Instalar Python 3.10+ (se não tiver)
brew install python@3.12

# Instalar dependência PyYAML
python3.12 -m pip install --break-system-packages pyyaml
```

---

## 📖 Como Usar Após Instalação

### No Claude Code (Principal)
```
/skill-forge
```
Ou mencione "criar skill" que o Claude ativa automaticamente.

### Scripts Python (Ferramentas Auxiliares)
```bash
cd ~/.claude/skills/skill-forge

# Ver ajuda
./forge.sh

# Criar nova skill
./forge.sh init minha-skill --path ~/skills

# Validar skill existente
./forge.sh validate ~/skills/minha-skill

# Analisar e sugerir melhorias
./forge.sh analyze ~/skills/minha-skill

# Empacotar skill para distribuição
./forge.sh package ~/skills/minha-skill --output ~/dist
```

---

## 🔄 Atualização da Skill

### Se instalou pelo Método 1 (.skill)
Baixe novamente o arquivo `.skill` e reinstale:
```bash
# Baixar nova versão
cd ~/Downloads
wget https://github.com/Hackerdomarketing/claude-code-skills/raw/main/releases/skill-forge.skill

# Reinstalar
unzip -o skill-forge.skill -d ~/.claude/skills/skill-forge
```

### Se instalou pelo Método 2 (código-fonte)
```bash
# Atualizar repositório
cd ~/Documents/claude-code-skills
git pull

# Reinstalar
cd skill-forge
./install.sh
```

---

## 🗂️ Estrutura Instalada

Após instalação bem-sucedida:

```
~/.claude/skills/skill-forge/
├── SKILL.md                    # Instruções para o Claude Code
├── README-INSTALACAO.md        # Documentação completa
├── install.sh                  # Script de reinstalação
├── forge.sh                    # Wrapper para scripts Python
├── scripts/                    # Ferramentas Python
│   ├── forge_init.py           # Criar nova skill
│   ├── forge_validate.py       # Validar skill
│   ├── forge_package.py        # Empacotar skill
│   └── forge_analyze.py        # Analisar skill
└── references/                 # Documentação de referência
    ├── arquiteturas.md         # Padrões de estrutura
    ├── frontmatter-exemplos.md # Exemplos de frontmatter
    ├── padroes-codigo.md       # Templates de código
    └── checklist-qualidade.md  # Checklist de qualidade
```

---

## ❓ Troubleshooting

### Skill não aparece no Claude Code
1. Verifique se está instalada: `ls ~/.claude/skills/skill-forge/SKILL.md`
2. Reinicie o Claude Code
3. Tente digitar `/skill-forge` manualmente

### Scripts Python não funcionam
```bash
# Instalar Python 3.12
brew install python@3.12

# Instalar PyYAML
python3.12 -m pip install --break-system-packages pyyaml

# Testar
cd ~/.claude/skills/skill-forge
./forge.sh
```

### Permissões negadas
```bash
# Corrigir permissões
chmod +x ~/.claude/skills/skill-forge/scripts/*.py
chmod +x ~/.claude/skills/skill-forge/*.sh
```

---

## 📚 Documentação Adicional

- **Repositório completo**: https://github.com/Hackerdomarketing/claude-code-skills
- **Documentação da skill**: `~/.claude/skills/skill-forge/README-INSTALACAO.md`
- **Referências técnicas**: `~/.claude/skills/skill-forge/references/`

---

## 🤝 Suporte e Contribuições

- **Issues**: https://github.com/Hackerdomarketing/claude-code-skills/issues
- **Pull Requests**: Bem-vindos!
- **Discussões**: Use as GitHub Discussions do repositório

---

## 📊 Diferença entre .skill e Código-fonte

| Aspecto | `.skill` (ZIP) | Código-fonte |
|---------|----------------|--------------|
| **Uso** | Instalação rápida | Desenvolvimento |
| **Atualização** | Manual (re-download) | `git pull` |
| **Tamanho** | 31 KB | ~50 KB (com .git) |
| **Edição** | Não recomendado | Fácil e versionado |
| **Ideal para** | Usuários finais | Desenvolvedores |

---

## 📝 Notas Importantes

1. ✅ A skill é instalada **globalmente** em `~/.claude/skills/` e fica disponível em todos os projetos
2. ✅ Scripts Python são **opcionais** - a skill funciona no Claude Code sem eles
3. ✅ O arquivo `.skill` é um **ZIP** comum - pode ser descompactado com qualquer ferramenta
4. ✅ Sempre prefira o **método 2** (código-fonte) se pretende contribuir ou modificar a skill

---

**Última atualização**: 2026-01-21
**Versão**: 1.0.0
**Tamanho**: 31 KB
