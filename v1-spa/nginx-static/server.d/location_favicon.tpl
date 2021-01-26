
location = /favicon.ico {
    include /nginx-static/location.d/*.conf;
    include /nginx-static/snippets/csp_none.tpl.conf;

    add_header Cache-Control "public, max-age=86400";
}
