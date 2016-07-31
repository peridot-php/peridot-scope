test: install
	php --version
	vendor/bin/peridot --version
	vendor/bin/peridot

install: vendor/autoload.php

ci: test

.PHONY: test install ci

vendor/autoload.php: composer.lock
	COMPOSER_ROOT_VERSION=1.99.99 composer install

composer.lock: composer.json
	COMPOSER_ROOT_VERSION=1.99.99 composer update
