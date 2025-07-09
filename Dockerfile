FROM n8nio/n8n:latest

USER root
RUN mkdir -p /home/node/.n8n/custom && chown -R node:node /home/node/.n8n

USER node
WORKDIR /home/node/.n8n/custom

RUN echo '{"name": "n8n-custom-modules", "version": "1.0.0"}' > package.json && npm install node-imap

WORKDIR /home/node
