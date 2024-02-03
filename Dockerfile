FROM --platform=linux/amd64 httpd:2.4.58@sha256:bf3df534d25718ac5b206f6705ebd157f9ed5d62687766aa058556ed4b760027

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
