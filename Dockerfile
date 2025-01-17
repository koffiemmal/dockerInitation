FROM node:18
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ENV PATH /usr/src/app/node_modules/.bin:$PATH
COPY package*.json /usr/src/app/
RUN npm install --max-old-space-size=4096  # Augmente la limite de mémoire
# ou
RUN NODE_OPTIONS="--max-old-space-size=4096" npm install
COPY . /usr/src/app/
EXPOSE 4000
CMD [ "npm", "start"]