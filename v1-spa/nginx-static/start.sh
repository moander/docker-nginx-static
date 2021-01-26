#!/bin/sh

/nginx-static/compile_config.sh

exec nginx -g 'daemon off;'
