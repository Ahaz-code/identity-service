FROM node:16-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and yarn.lock
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy the rest of the application files
COPY . .

# Expose port (Vite's default port is 5173)
EXPOSE 5173

# Command to run the application
CMD ["yarn", "dev"]
