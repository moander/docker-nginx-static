FROM nginx:alpine

ADD nginx.template.conf /etc/nginx/

ENV PORT=80 \
    NGINX_GZIP=on \
    NGINX_404=/404.html \
    NGINX_INDEX=index.html \
    NGINX_KEEPALIVE_TIMEOUT=10 \
    HEADER_X_FRAME_OPTIONS="DENY" \
    HEADER_STRICT_TRANSPORT_SECURITY="max-age=63072000; preload" \
    NGINX_SUBSTITUTES='$PORT $NGINX_GZIP $NGINX_404 $NGINX_INDEX $NGINX_KEEPALIVE_TIMEOUT $HEADER_X_FRAME_OPTIONS $HEADER_STRICT_TRANSPORT_SECURITY'

CMD envsubst "$NGINX_SUBSTITUTES" < /etc/nginx/nginx.template.conf > /etc/nginx/nginx.conf && exec nginx -g 'daemon off;'
