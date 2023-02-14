# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies using Yarn
RUN yarn install

# Expose the port the app will listen on
EXPOSE 5001

# Define the command to start the app
CMD [ "yarn", "start" ]
