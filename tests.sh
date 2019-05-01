#!/bin/bash

# some commands must be executable
COMPOSER_ALLOW_SUPERUSER=1 composer --version || exit 1

#PHP_XDEBUG_ENABLED=1 docker-entrypoint

# some PHP extensions must be loaded
echo 'search mysqli' && php -i | grep '^mysqli$' || exit 1
#echo 'search xdebug' && php -i | grep '^xdebug$' || exit 1
echo 'search blackfire' && php -i | grep '^blackfire$' || exit 1

#echo 'xdebug must be disabled by PHP_XDEBUG_ENABLED=0'
#PHP_XDEBUG_ENABLED=0 docker-entrypoint
#if [ "$(php -i | grep '^xdebug$' | wc -l)" != 0 ]; then
#	exit 1
#fi
