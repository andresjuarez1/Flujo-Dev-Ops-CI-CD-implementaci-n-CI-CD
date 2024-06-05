FROM node:14

# Create app directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install --unsafe-perm

# Bundle app source
COPY . .

# Change to a non-root user
RUN useradd -m appuser
USER appuser

# Expose port
EXPOSE 3000

# Command to run the application
CMD ["node", "index.js"]
