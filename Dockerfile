# Use the latest LTS Node.js base image
FROM node:lts-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json before other files
# Utilize Docker cache to save re-installing dependencies if unchanged
COPY package*.json ./

# Install dependencies
RUN npm install 

# Copy all files from current directory into working dir of container
COPY . .

# Build for production
RUN npm run build

# Export port 3000 for the Node.js app
EXPOSE 3000

# Set the command to start the Node.js app
CMD [ "npm", "start" ]