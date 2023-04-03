# Use an official Node.js runtime as a parent image
FROM node:16-alpine AS build

# Set the working directory to /app
WORKDIR /cis-680-project-front-end


# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY cis-680-project-front-end .

# Build the application
RUN npm run build

# Use a lightweight Nginx image as the final image
FROM nginx:alpine

# Copy the build folder from the previous stage to the Nginx image
COPY --from=build /cis-680-project-front-end/build /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]