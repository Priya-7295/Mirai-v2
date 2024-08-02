# Base image with Node.js
FROM node:20.15.1

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json package-lock.json ./

# Install dependencies using npm
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the application port (change if your app uses a different port)
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
