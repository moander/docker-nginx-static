
location / {
    include /nginx-static/location.d/*.conf;
    include /nginx-static/csp/location_default.tpl.conf;

    add_header Cache-Control "public, max-age=3600, s-maxage=300, stale-while-revalidate=3600";
}
