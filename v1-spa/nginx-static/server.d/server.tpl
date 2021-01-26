listen       ${PORT};
server_name  localhost;

root   /usr/share/nginx/html;

index  ${NGINX_INDEX};

error_page 404 ${NGINX_404};
log_not_found off;
