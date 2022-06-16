FROM nginx:1.22-alpine

#
# Copy configs
#
COPY ./configs/conf.d/*.conf /etc/nginx/conf.d/

COPY ./configs/nginx.conf /etc/nginx/

#
# TLS
#

RUN apk upgrade --update-cache --available && apk add openssl && rm -rf /var/cache/apk/*

RUN mkdir /etc/nginx/tls && openssl dhparam -out /etc/nginx/tls/dhparam.pem 2048 \
                         && openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
                         -keyout /etc/nginx/tls/jenkins.key -out /etc/nginx/tls/jenkins.crt \
                         -subj "/C=RU/ST= /L=Rostov/O= /OU= /CN=jenkins.int" \
                         && chown -R nginx: /etc/nginx/tls && chown -R nginx: /var/log/nginx


EXPOSE 80 443

USER nginx
