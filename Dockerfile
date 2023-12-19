# Use the official Node.js 16.14.0 image from Docker Hub
FROM node:16.14.0 AS installer

# Create a directory in the container to hold the application code
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the work directory
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the rest of the application code to the work directory
COPY . .