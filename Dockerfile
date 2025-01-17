FROM node:20-slim

WORKDIR /usr/src/app

COPY package*.json ./

# Installation des dépendances
RUN npm install --production

# Copie du reste des fichiers
COPY . .

# Port exposé
EXPOSE 4000

# Commande de démarrage
CMD ["npm", "start"]