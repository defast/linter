FROM php:7.4-cli

RUN pear install PHP_CodeSniffer

COPY "entrypoint.sh" "/entrypoint.sh"

RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]