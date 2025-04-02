# Use the official Node.js image as a base
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy all files into the container
COPY . .

# Expose port (match this with your app’s running port)
EXPOSE 3000

# Command to start the application
CMD ["npm", "start"]
