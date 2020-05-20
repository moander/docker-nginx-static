FROM nginx:alpine

ADD nginx.template.conf /etc/nginx/

ENV PORT=80 \
    NGINX_GZIP=on \
    NGINX_404=/404.html \
    NGINX_INDEX=index.html \
    NGINX_KEEPALIVE_TIMEOUT=10 \
    NGINX_SUBSTITUTES='$PORT $NGINX_GZIP $NGINX_404 $NGINX_INDEX $NGINX_KEEPALIVE_TIMEOUT'

CMD envsubst "$NGINX_SUBSTITUTES" < /etc/nginx/nginx.template.conf > /etc/nginx/nginx.conf && exec nginx -g 'daemon off;'
