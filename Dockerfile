FROM --platform=linux/amd64 httpd:2.4.62@sha256:7e0c12a3515352e683ec26afe4c58ca836c493359d15ab0c987aeb550a906912

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
