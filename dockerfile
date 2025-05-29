# Use an NGINX base image
FROM nginx:alpine

# Copy website files to the default NGINX directory
COPY ["Europe Travel", "/usr/share/nginx/html"]

# Expose port 80 for web traffic
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
