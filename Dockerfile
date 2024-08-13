FROM --platform=linux/amd64 httpd:2.4.62@sha256:618cbc325cb8e90e6973b922712c99afb5ee0f7004991494b4407a43fa9d3457

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
