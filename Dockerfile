FROM nginx:alpine
LABEL maintainer="youssefba141"
LABEL description="PetShop static website"
RUN rm -rf /usr/share/nginx/html/*
COPY html/ /usr/share/nginx/html/
COPY css/ /usr/share/nginx/html/css/
COPY img/ /usr/share/nginx/html/img/
EXPOSE 80