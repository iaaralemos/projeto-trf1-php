FROM nginx:1.15

ADD docker/vhosts.conf /etc/nginx/conf.d/default.conf