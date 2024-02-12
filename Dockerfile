From nginx:latest
RUN rm -f /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html