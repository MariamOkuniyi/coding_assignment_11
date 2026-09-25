# Use Node.js as the base image
FROM node:20

# Set the working directory inside the container
WORKDIR /okuniyi_mariam_site

# Copy package files first
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the rest of the React application
COPY . .

# Expose the React application port
EXPOSE 3000

# Start the React application
CMD ["npm", "start"]