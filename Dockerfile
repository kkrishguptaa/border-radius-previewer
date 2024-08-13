FROM --platform=linux/amd64 httpd:2.4.62@sha256:7bb479e5407990e2a8c88c729dec9a159f2f67029581222594d606a3298a7811

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
