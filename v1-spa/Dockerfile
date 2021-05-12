# syntax=docker/dockerfile:1
FROM nginx:1.20-alpine

ADD nginx-static /nginx-static

# Set NGINX_LISTEN_OPTS=http2 to accept H2C connections from upstream
ENV PORT=80 \
    NGINX_LISTEN_OPTS="" \
    NGINX_GZIP=on \
    NGINX_404=/404.html \
    NGINX_INDEX=index.html \
    NGINX_KEEPALIVE_TIMEOUT=10 \
    HEADER_X_FRAME_OPTIONS="DENY" \
    HEADER_STRICT_TRANSPORT_SECURITY="max-age=63072000; preload" \
    SPA_INDEX_CSP_FROM="/usr/share/nginx/html/index.nginx-static-csp.tpl" \
    DEFAULT_NGINX_SUBSTITUTES='$PORT $NGINX_LISTEN_OPTS $NGINX_GZIP $NGINX_404 $NGINX_INDEX $NGINX_KEEPALIVE_TIMEOUT $HEADER_X_FRAME_OPTIONS $HEADER_STRICT_TRANSPORT_SECURITY'

# You can add extra substitutes by setting the NGINX_SUBSTITUTES variable
CMD ["/nginx-static/start.sh"]
