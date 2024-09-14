# Use an official Node.js runtime as a parent image
FROM node:20

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json .

# Install dependencies
RUN npm install

# Copy the rest of the application code
# COPY . . <-- This can be excluded for development purposes as we will use volume

# Expose the port the app runs on
EXPOSE 3000

# Build the React app
CMD ["npm", "run", "dev"]
