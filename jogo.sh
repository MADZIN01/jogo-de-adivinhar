#!/bin/bash

# Cores
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
NC='\033[0m' # Sem cor

# Limpa a tela
clear

# Banner do jogo
echo -e "${PURPLE}╔════════════════════════════════════╗${NC}"
echo -e "${PURPLE}║   🎮 JOGO DE ADIVINHAR NÚMEROS 🎮  ║${NC}"
echo -e "${PURPLE}╚════════════════════════════════════╝${NC}"
echo ""
echo -e "${BLUE}📋 Regras:${NC}"
echo "   • Adivinhe o número de 1 a 10"
echo "   • Você tem 3 chances"
echo "   • Boa sorte!"
echo ""

# Gera número aleatório de 1 a 10
NUMERO_SECRETO=$((RANDOM % 10 + 1))

# Número de tentativas
TENTATIVAS=3

# Loop do jogo
for ((i=1; i<=TENTATIVAS; i++)); do
    echo -e "${YELLOW}Tentativa $i de $TENTATIVAS${NC}"
    read -p "Digite seu palpite (1-10): " PALPITE
    
    # Valida entrada
    if ! [[ "$PALPITE" =~ ^[0-9]+$ ]] || [ "$PALPITE" -lt 1 ] || [ "$PALPITE" -gt 10 ]; then
        echo -e "${RED}❌ Digite um número válido entre 1 e 10!${NC}"
        echo ""
        ((i--))  # Não conta como tentativa
        continue
    fi
    
    # Verifica se acertou
    if [ "$PALPITE" -eq "$NUMERO_SECRETO" ]; then
        echo ""
        echo -e "${GREEN}╔════════════════════════════════════╗${NC}"
        echo -e "${GREEN}║        🎉 PARABÉNS! 🎉             ║${NC}"
        echo -e "${GREEN}║   Você acertou em $i tentativa(s)! ║${NC}"
        echo -e "${GREEN}╚════════════════════════════════════╝${NC}"
        exit 0
    else
        # Dá dicas
        if [ "$PALPITE" -lt "$NUMERO_SECRETO" ]; then
            echo -e "${BLUE}📈 O número é MAIOR!${NC}"
        else
            echo -e "${BLUE}📉 O número é MENOR!${NC}"
        fi
        echo ""
    fi
done

# Se não acertou em 3 tentativas
echo -e "${RED}╔════════════════════════════════════╗${NC}"
echo -e "${RED}║         😢 GAME OVER! 😢           ║${NC}"
echo -e "${RED}║   O número era: $NUMERO_SECRETO                ║${NC}"
echo -e "${RED}║   Tente novamente!                 ║${NC}"
echo -e "${RED}╚════════════════════════════════════╝${NC}"
exit 1
