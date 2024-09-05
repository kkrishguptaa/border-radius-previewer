FROM --platform=linux/amd64 httpd:2.4.62@sha256:bfc6b6955671acae12d7e3013d063f4639953ffec54d26c60dd3120030fd3596

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
