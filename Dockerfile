# 1️⃣ Use the official Node.js image
FROM node:18

# 2️⃣ Set the working directory inside the container
WORKDIR /app

# 3️⃣ Copy package files first (for caching npm install)
COPY package*.json ./

# 4️⃣ Install dependencies
RUN npm install

# 5️⃣ Copy the rest of your project files
COPY . .

# 6️⃣ Expose the port your app runs on
EXPOSE 3000

# 7️⃣ Command to start your app
CMD ["npm", "start"]
