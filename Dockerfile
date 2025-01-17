FROM node:18.19-bullseye-slim

# Installation des dépendances système nécessaires
RUN mkdir /usr/src/app

WORKDIR /usr/src/app

ENV PATH /usr/src/app/node_modules/.bin:$PATH

# Copie des fichiers package
COPY package*.json ./

# Installation avec des options de mémoire explicites
RUN npm install

# Copie du reste des fichiers
COPY . .

# Port exposé
EXPOSE 4000

# Commande de démarrage modifiée pour utiliser node directement
CMD ["node", "index.js"]