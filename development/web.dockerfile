FROM nginx:latest
ADD development/vhost.conf /etc/nginx/conf.d/default.conf
COPY public /var/www/public