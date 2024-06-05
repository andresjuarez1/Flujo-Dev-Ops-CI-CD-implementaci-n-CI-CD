FROM node:14

# Create app directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Switch to root user to install dependencies
USER root

# Install app dependencies with unsafe permissions
RUN npm install --unsafe-perm

# Create a non-root user and switch to it
RUN useradd -m appuser
USER appuser

# Bundle app source
COPY . .

# Expose port
EXPOSE 3002

# Command to run the application
CMD ["node", "index.js"]
