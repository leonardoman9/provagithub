#!/bin/bash

# Colors for better readability
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No color

# Configura Git per fare il rebase
git config pull.rebase true

# Esegui il pull da GitHub per aggiornare la repository di Gitea
echo -e "${YELLOW}Eseguendo pull da GitHub...${NC}" > /dev/tty1
git pull https://github.com/leonardoman9/provagithub || {
  echo -e "${RED}Errore durante il pull da GitHub. Verifica la connessione e la configurazione di GitHub.${NC}" > /dev/tty1
  exit 1
}

# Segnala che la sincronizzazione è stata completata con successo
echo -e "${GREEN}Sincronizzazione completata con successo con GitHub!${NC}" > /dev/tty1
