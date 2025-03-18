FROM --platform=linux/amd64 httpd:2.4.63@sha256:877b92c7052ca20f71cf614c2bd3e621043b6fd3024166311d52ca359638f2eb

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
