FROM --platform=linux/amd64 httpd:2.4.59@sha256:10758fe1fe13980e0d7bbdf8f0bbb40cf04e7c996248aac4ea390670b2420bd1

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
