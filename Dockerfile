# Use an official Node.js base image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy app files into container
COPY . .

# Expose port 3000
EXPOSE 3000

# Run the application
CMD ["node", "index.js"]
