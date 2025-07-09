FROM n8nio/n8n:latest

# Passer en utilisateur root pour les permissions
USER root

# Se déplacer dans le répertoire où n8n est installé
WORKDIR /usr/local/lib/node_modules/n8n

# Lancer l'installation du module ici
RUN npm install node-imap

# Revenir à l'utilisateur et au répertoire par défaut
USER node
WORKDIR /home/node
