#!/bin/sh

# You can add extra substitutes by setting the NGINX_SUBSTITUTES variable

export NGINX_SUBSTITUTES="$DEFAULT_NGINX_SUBSTITUTES $NGINX_SUBSTITUTES"

envsubst "$NGINX_SUBSTITUTES" < /nginx-static/nginx.template.conf > /etc/nginx/nginx.conf

test -z "$SPA_INDEX_CSP_FROM" || (test -f "$SPA_INDEX_CSP_FROM" && cp -f "$SPA_INDEX_CSP_FROM" /nginx-static/csp/location_spa_index.tpl) || true

(test -n "$API_ROUTER_URL" && test -n "$API_ROUTER_PROXY_PATH") || rm -f /nginx-static/server.d/location_api_proxy.tpl

find /nginx-static/ -type f -iname '*.tpl' -exec sh -c 'envsubst "$NGINX_SUBSTITUTES" < "{}" > "{}.conf"' \;
