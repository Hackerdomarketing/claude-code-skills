# Claude Code Skills

Coleção de skills profissionais para o Claude Code.

## Skills Disponíveis

### skill-forge
Sistema completo para criar habilidades de alta qualidade para o Claude Code.

[📖 Documentação](skill-forge/README-INSTALACAO.md) | [🚀 Instalação](skill-forge/install.sh)

**Instalação:**
```bash
cd skill-forge
./install.sh
```

**Usando os scripts:**
```bash
./forge.sh                                    # Ver ajuda
./forge.sh init minha-skill --path ~/skills   # Criar nova skill
./forge.sh validate ~/skills/minha-skill      # Validar skill
```

## Como Usar Este Repositório

1. Clone o repositório:
   ```bash
   git clone https://github.com/Hackerdomarketing/claude-code-skills.git
   cd claude-code-skills
   ```

2. Instale a(s) skill(s) desejada(s):
   ```bash
   cd skill-forge
   ./install.sh
   ```

3. Use no Claude Code:
   ```
   /skill-forge
   ```

## Estrutura

Cada skill segue a estrutura padrão do Claude Code:

```
├── SKILL.md              # Instruções principais (OBRIGATÓRIO)
├── scripts/              # Scripts Python/Bash (opcional)
├── references/           # Documentação de referência (opcional)
└── assets/               # Templates, imagens (opcional)
```

## Contribuindo

Contribuições são bem-vindas! Por favor:

1. Fork este repositório
2. Crie uma branch para sua feature (`git checkout -b feature/nova-skill`)
3. Commit suas mudanças (`git commit -m 'feat: adiciona nova skill'`)
4. Push para a branch (`git push origin feature/nova-skill`)
5. Abra um Pull Request

## Licença

MIT License - veja LICENSE para detalhes.
