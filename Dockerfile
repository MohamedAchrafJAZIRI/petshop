# mhissen version - using nginx alpine
FROM nginx:alpine

# Add metadata
LABEL maintainer="mohamedmhissen"
LABEL version="2.0"

# Remove default nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy website files
COPY html/ /usr/share/nginx/html/
COPY css/ /usr/share/nginx/html/css/
COPY img/ /usr/share/nginx/html/img/

# Open port 80
EXPOSE 80