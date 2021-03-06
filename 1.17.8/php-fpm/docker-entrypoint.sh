#!/bin/sh

cat > /etc/nginx/env.conf <<EOF
set \$NGINX_SERVER_HOST $NGINX_SERVER_HOST;
set \$NGINX_SERVER_NAME $NGINX_SERVER_NAME;
set \$NGINX_WORKSPACE_ROOT $NGINX_WORKSPACE_ROOT;
set \$NGINX_ROOT_PATH_REDIRECT $NGINX_ROOT_PATH_REDIRECT;
set \$NGINX_PHP_FPM_HOST $NGINX_PHP_FPM_HOST;
set \$NGINX_PHP_FPM_PORT $NGINX_PHP_FPM_PORT;

EOF

exec "$@"