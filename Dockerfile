# Use the Node.js base image
FROM node:18

# Set working directory
WORKDIR /app

# Disable strict SSL
RUN npm config set strict-ssl false

# Copy package files and install dependencies
COPY package.json  ./ 
RUN npm install

# Copy application source code
COPY . .

# Expose the application port
EXPOSE 8080

# Start the application
CMD ["npm", "start"]
