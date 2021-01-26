
location = ${NGINX_404} {
    include /nginx-static/location.d/*.conf;
    include /nginx-static/csp/location_404.tpl.conf;

    add_header Cache-Control "no-store";
}
