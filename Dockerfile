FROM --platform=linux/amd64 httpd:2.4.62@sha256:d9b5d67da646fbcaf9054b171ae6ee5ac453dadbe885816040b171b72fa31f42

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
