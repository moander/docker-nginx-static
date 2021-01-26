
location ~* "^/(css|fonts|js)/.+\.[a-f0-9]{8}\.(css|woff|woff2|js)$" {
    include /nginx-static/location.d/*.conf;
    include /nginx-static/csp/location_bundles.tpl.conf;

    add_header Cache-Control "public, max-age=604800, s-maxage=7200, stale-while-revalidate=86400, immutable";
}
