FROM node:18

# Create and set the working directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Set PATH for node_modules/.bin
ENV PATH /usr/src/app/node_modules/.bin:$PATH

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the application port
EXPOSE 4000

# Start the application
CMD ["npm", "start"]