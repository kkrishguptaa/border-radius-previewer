FROM --platform=linux/amd64 httpd:2.4.58@sha256:316218b94ebbb3620d20a1b832a45c9409cc70943b56af271d9e95f14e4dcb12

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
