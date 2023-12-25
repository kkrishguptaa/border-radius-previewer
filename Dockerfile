FROM --platform=linux/amd64 httpd:2.4.58

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
