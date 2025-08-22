# Use Node instead of plain Alpine to avoid missing dependencies
FROM node:24-alpine3.21

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of your app
COPY . .

# Expose the port your express app listens on (default 3000)
EXPOSE 8080

# Start the app
CMD [ "node", "server.js" ]