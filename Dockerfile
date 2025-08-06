# Use a lightweight Node.js image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if exists)
# to leverage Docker cache for dependencies
COPY package*.json ./

# Install application dependencies
RUN npm install --only=production

# Copy the rest of the application code
COPY . .

# Expose the port your Express app listens on
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
