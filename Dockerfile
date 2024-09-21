# Use the official Ubuntu base image
FROM ubuntu:latest

# Update the package list and install dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    openjdk-11-jdk \
    mysql-server \
    nginx

# Expose port 80 for the Nginx web server
EXPOSE 80

# Start Nginx service in the foreground
CMD ["nginx", "-g", "daemon off;"]

