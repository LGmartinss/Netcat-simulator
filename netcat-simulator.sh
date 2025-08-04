#!/bin/bash

# Cores para melhor visualização
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}=== Netcat Simulator (Bash) ===${NC}"
echo "1. Ouvir em uma porta (LISTEN)"
echo "2. Conectar a um host (CONNECT)"
echo -n "Escolha uma opção (1 ou 2): "
read option

case $option in
    1)
        # Modo servidor (escuta)
        echo -n "Digite a porta para escutar: "
        read port
        echo -e "${GREEN}[+] Ouvindo na porta $port...${NC}"
        echo -e "${RED}Pressione CTRL+C para parar.${NC}"
        nc -lvp $port
        ;;
    2)
        # Modo cliente (conexão)
        echo -n "Digite o host/IP: "
        read host
        echo -n "Digite a porta: "
        read port
        echo -e "${GREEN}[+] Conectando a $host:$port...${NC}"
        nc $host $port
        ;;
    *)
        echo -e "${RED}Opção inválida!${NC}"
        ;;
esac