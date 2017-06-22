FROM alpine:latest

RUN apk update 
RUN apk add nginx 

RUN echo -e "daemon off;\nworker_processes  1;\nevents {\n    worker_connections  1024;\n}\nhttp {\n	server {\n        listen       80;\n        server_name  localhost;\n        location / {\n            root   /var/www/html;\n			autoindex on;\n        }\n    }\n}\n\n" > /etc/nginx/nginx.conf

RUN mkdir /var/www/html/ /run/nginx
COPY ./ /var/www/html

CMD [ "/usr/sbin/nginx" ]
