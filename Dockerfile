FROM --platform=linux/amd64 httpd:2.4.59@sha256:ca25f863c1a625593be958b8949c39d6947e7441205e4fc368165473a69a392e

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
