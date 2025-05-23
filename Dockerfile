# Use official Node.js image from Docker Hub
FROM node:14
 
# Set the working directory in the container
WORKDIR /app
 
# Copy package.json and package-lock.json
COPY package*.json ./
 
# Install dependencies
RUN npm install
 
# Copy the rest of the application code
COPY . .
 
# Expose the port the app will run on
EXPOSE 3004
 
# Command to run the app
CMD ["npm", "start"]
