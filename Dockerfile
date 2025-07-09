FROM n8nio/n8n:latest

# En tant que root, créer le dossier pour les modules externes
USER root
RUN mkdir -p /home/node/.n8n/custom && chown -R node:node /home/node/.n8n

# Revenir à l'utilisateur standard de n8n
USER node

# Se déplacer dans le nouveau dossier
WORKDIR /home/node/.n8n/custom

# Créer un fichier package.json et installer le module
# Ceci isole notre module des dépendances de n8n
RUN echo '{"name": "n8n-custom-modules", "version": "1.0.0"}' > package.json && npm install node-imap

# Revenir au répertoire de travail par défaut
WORKDIR /home/node
