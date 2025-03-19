FROM --platform=linux/amd64 httpd:2.4.63@sha256:391a8eb0c1ed464163da46099606a5ec293705118f3054d6c60f5957e2485bd0

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
