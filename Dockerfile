FROM n8nio/n8n:latest
USER root
RUN npm install node-imap
USER node
