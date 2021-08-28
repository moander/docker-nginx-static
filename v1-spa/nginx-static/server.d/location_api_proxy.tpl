location = ${API_ROUTER_PROXY_PATH} {
  rewrite ^ ${API_ROUTER_PROXY_PATH}/;
}

location ${API_ROUTER_PROXY_PATH}/ {
  proxy_ssl_server_name on;
  proxy_set_header Forwarded "";
  proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
  proxy_set_header X-Forwarded-Host $http_x_forwarded_host;
  proxy_set_header X-Forwarded-Proto $http_x_forwarded_proto;

  proxy_buffering off;
  proxy_http_version 1.1;

  proxy_ssl_verify ${API_ROUTER_SSL_VERIFY};
  proxy_ssl_trusted_certificate /etc/ssl/cert.pem;
  proxy_ssl_session_reuse on;

  proxy_pass ${API_ROUTER_URL}/;

  proxy_redirect / $http_origin${API_ROUTER_PROXY_PATH}/;
}
