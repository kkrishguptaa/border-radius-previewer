FROM --platform=linux/amd64 httpd:2.4.63@sha256:dc4cb8cb92a77d05ffd9de9f978783bd0ebc2445bf064002b820636e416235fc

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
