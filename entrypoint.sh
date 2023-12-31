#!/bin/sh
php-fpm --allow-to-run-as-root -g /tmp/php-fpm.pid -F &

until [ -f /tmp/php-fpm.pid ]; do usleep 10000; done

nginx -g 'daemon off;' &

wait -n
