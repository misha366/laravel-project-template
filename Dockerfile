FROM php:8.2-fpm-alpine
WORKDIR /var/www/php
COPY ./testfile.php /var/www/php/testfile.php
ENTRYPOINT [ "php", "testfile.php" ]
