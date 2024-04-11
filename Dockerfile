FROM --platform=linux/amd64 httpd:2.4.59@sha256:b274c03586ee59b44abf6c3ce4f33e0b154b3556a98ba11932ad7a385f4cceed

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
