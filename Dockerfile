FROM --platform=linux/amd64 httpd:2.4.59@sha256:b19cace6539a05579c55fda6be0a873c1d2c2e7392e7c08805141f79852ab07b

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
