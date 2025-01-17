# Utilisez une image de base Node.js
FROM node

# Créez un répertoire pour l'application
RUN mkdir /usr/src/app

# Définissez le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Ajoutez /usr/src/app/node_modules/.bin au PATH
ENV PATH /usr/src/app/node_modules/.bin:$PATH

# Copiez les fichiers de dépendances
COPY package*.json ./

# Installez les dépendances
RUN npm install

# Copiez le reste des fichiers de l'application
COPY . .

# Exposez le port sur lequel l'application écoute
EXPOSE 3000

# Commande pour démarrer l'application
CMD ["npm", "start"]