FROM --platform=linux/amd64 httpd:2.4.62@sha256:7172d4a5ef54352f16a8266d090778609db1ffb51ce3d4684bfd111896764b0f

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
