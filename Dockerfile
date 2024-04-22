FROM nginx:1.19.0
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY ./www .
EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]