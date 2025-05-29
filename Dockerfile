# Use an NGINX base image
FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf

# Copy website files to the default NGINX directory
COPY ["Europe Travel", "/usr/share/nginx/html"]

# Expose port 80 for web traffic
EXPOSE 8080

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
