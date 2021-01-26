# Used for health checks
location = /ping.html {
    include /nginx-static/location.d/*.conf;
    include /nginx-static/snippets/csp_none.tpl.conf;

    add_header Cache-Control "public, max-age=60, must-revalidate";
}
