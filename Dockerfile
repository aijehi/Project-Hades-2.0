# Use an official Node.js image with a specified version
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 5001
EXPOSE 5001

# Command to run your application
CMD ["node", "app.js"]
