
location = /${NGINX_INDEX} {
    include /nginx-static/location.d/*.conf;
    include /nginx-static/csp/location_spa_index.tpl.conf;

    add_header Cache-Control "public, max-age=30, s-maxage=10, stale-if-error=3600, must-revalidate";
}
