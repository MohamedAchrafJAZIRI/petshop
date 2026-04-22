# Use nginx lightweight web server as base
FROM nginx:alpine

# Remove default nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy our petshop website into the container
COPY html/ /usr/share/nginx/html/
COPY css/ /usr/share/nginx/html/css/
COPY img/ /usr/share/nginx/html/img/

# Open port 80
EXPOSE 80