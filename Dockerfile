# Use an official Nginx image as the base
FROM nginx:alpine

# Copy the static HTML file from the 'src' directory to Nginx's default web directory
COPY src/index.html /usr/share/nginx/html/index.html

# Expose port 80 for the web server
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
