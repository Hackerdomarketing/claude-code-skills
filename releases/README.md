# Releases - Skills Prontas para Instalação

Esta pasta contém versões empacotadas (`.skill`) das skills prontas para instalação direta.

## skill-forge.skill

Arquivo empacotado completo da skill skill-forge.

### Instalação Rápida com .skill

**Opção 1: Descompactar diretamente**
```bash
# Descompactar para ~/.claude/skills/
unzip skill-forge.skill -d ~/.claude/skills/skill-forge
```

**Opção 2: Usar o método recomendado (clone + install.sh)**
```bash
# Clonar repositório
git clone https://github.com/Hackerdomarketing/claude-code-skills.git
cd claude-code-skills/skill-forge

# Instalar
./install.sh
```

## Por que ter o .skill aqui?

- **Backup**: Cópia de segurança do pacote compilado
- **Distribuição**: Download direto sem precisar clonar o repo
- **Compartilhamento**: Facilita enviar para outros usuários

## Diferença entre .skill e código-fonte

| Arquivo | Propósito |
|---------|-----------|
| `releases/skill-forge.skill` | Pacote ZIP pronto para distribuição |
| `skill-forge/` (pasta) | Código-fonte para desenvolvimento |

Prefira sempre instalar via `install.sh` a partir do código-fonte, pois garante a versão mais atualizada.
