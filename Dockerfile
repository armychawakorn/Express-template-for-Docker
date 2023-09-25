# Use an official Node runtime as a parent image
FROM node:19-alpine

# Set the working directory to /app
WORKDIR /api/

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN yarn install

# Copy the rest of the application code to the container
COPY . .

# Expose the port that the application will listen on
EXPOSE 4100

# Start the backend
CMD [ "yarn", "run", "start" ]