# Use the official Nginx image as the base image
FROM nginx:alpine

# Set environment variable for Nginx HTML directory
ENV APP_DIR=/usr/share/nginx/html

# Install Git, clone the repository, and copy files to the Nginx HTML directory
RUN apk add --no-cache git && \
    git clone https://github.com/Shivateja124/hms-html.git /temp && \
    cp -r /temp/* $APP_DIR && \
    rm -rf /temp

# Expose port 80 for the Nginx web server
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
