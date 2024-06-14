# Use a lightweight Node.js base image
FROM node:18-alpine

# Set the working directory within the container
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock)
COPY package*.json ./

# Install dependencies 
RUN npm install

# Copy the rest of your application code
COPY . .

RUN ls ./node_modules/y-websocket/bin/  


# Set the environment variable for Yjs persistence 
ENV YPERSISTENCE=./data

# Expose the port your server will listen on
EXPOSE 1234

# Define the command to run your server
CMD ["npm", "start"] 
