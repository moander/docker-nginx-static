#
# rewrite /_crsvc/*/*/whatever to /whatever
#

rewrite ^/_crsvc/[^/]+/[^/]*/?(.*)$ /$1 last;
