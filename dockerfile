FROM node:14

# Create app directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install --unsafe-perm

# Bundle app source
COPY . .

# Create a non-root user and switch to it
RUN useradd -m appuser
USER appuser

# Expose port
EXPOSE 3002

# Command to run the application
CMD ["node", "index.js"]
