#!/bin/bash


REPO="MADZIN01/jogo-de-adivinhar"
APP_NAME="jogo-adivinhar"

# Cores
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${BLUE}╔════════════════════════════════════╗${NC}"
echo -e "${BLUE}║    🎮 Instalador do Jogo 🎮        ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════╝${NC}"
echo ""

# Verifica se precisa de sudo
if [ "$EUID" -ne 0 ]; then 
    echo -e "${YELLOW}🔐 Precisamos de permissões de administrador...${NC}"
    sudo "$0" "$@"
    exit $?
fi

# Verifica se tem curl
if ! command -v curl &> /dev/null; then
    echo -e "${RED}❌ curl não encontrado!${NC}"
    echo "Instalando curl..."
    apt-get update && apt-get install -y curl
fi

echo -e "${BLUE}⬇️  Baixando o jogo...${NC}"

# Baixa o jogo do GitHub
curl -fsSL "https://raw.githubusercontent.com/$REPO/main/jogo.sh" -o /tmp/jogo.sh

# Verifica se baixou com sucesso
if [ ! -f /tmp/jogo.sh ]; then
    echo -e "${RED}❌ Erro ao baixar o jogo!${NC}"
    echo "Verifique se o repositório está correto:"
    echo "https://github.com/$REPO"
    exit 1
fi

echo -e "${BLUE}📦 Instalando...${NC}"

# Move para o local correto
mv /tmp/jogo.sh /usr/local/bin/$APP_NAME
chmod +x /usr/local/bin/$APP_NAME

echo ""
echo -e "${GREEN}╔════════════════════════════════════╗${NC}"
echo -e "${GREEN}║   ✅ Instalação concluída! ✅      ║${NC}"
echo -e "${GREEN}╚════════════════════════════════════╝${NC}"
echo ""
echo -e "${BLUE}Para jogar, digite:${NC} $APP_NAME"
echo ""
