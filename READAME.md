# 🎮 Jogo de Adivinhar Números

Um jogo simples de terminal onde você deve adivinhar um número de 1 a 10 em 3 tentativas!

## 📋 Como Jogar

- O jogo escolhe um número aleatório de 1 a 10
- Você tem 3 chances para acertar
- Após cada tentativa, recebe uma dica se o número é maior ou menor
- Boa sorte! 🍀

## 🚀 Instalação Rápida

### Método 1: Instalação Automática (Recomendado)

Cole este comando no terminal:

```bash
curl -fsSL https://raw.githubusercontent.com/MADZIN1234/jogo-de-adivinhar/main/instalar.sh | sudo bash
```

### Método 2: Instalação Manual

```bash
# Baixa o instalador
wget https://raw.githubusercontent.com/MADZIN1234/jogo-de-adivinhar/main/instalar.sh

# Torna executável
chmod +x instalar.sh

# Executa
sudo ./instalar.sh
```

### Método 3: Sem Instalar (Rodar Direto)

```bash
bash <(curl -s https://raw.githubusercontent.com/MADZIN1234/jogo-de-adivinhar/main/jogo.sh)
```

## 🎯 Como Usar

Após instalar, basta digitar:

```bash
jogo-adivinhar
```

## 🎨 Capturas de Tela

```
╔════════════════════════════════════╗
║   🎮 JOGO DE ADIVINHAR NÚMEROS 🎮  ║
╚════════════════════════════════════╝

📋 Regras:
   • Adivinhe o número de 1 a 10
   • Você tem 3 chances
   • Boa sorte!

Tentativa 1 de 3
Digite seu palpite (1-10): 5
📈 O número é MAIOR!
```

## 🗑️ Desinstalação

```bash
sudo rm /usr/local/bin/jogo-adivinhar
```

## 📝 Requisitos

- Linux (qualquer distribuição)
- Bash
- curl (instalado automaticamente se necessário)

## 🤝 Contribuindo

Sinta-se livre para fazer fork e melhorar o jogo!

## 📜 Licença

MIT License - use como quiser!

---

**Feito com ❤️ em Bash**

**LEMBRE-SE:** Troque `SEU-USUARIO` pelo seu nome de usuário do GitHub em todos os comandos!
