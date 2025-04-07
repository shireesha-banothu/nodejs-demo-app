# Step 1: Base image
FROM node:14

# Step 2: Set working directory in the container
WORKDIR /app

# Step 3: Copy package files for installing dependencies
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy all source code to container
COPY . .

# Step 6: Expose port for container
EXPOSE 3000

# Step 7: Start the app
CMD ["node", "index.js"]

