FROM --platform=linux/amd64 httpd:2.4.62@sha256:6dc41549e62c2969e9be308a9333492c726db4efab846a72053857311b08a985

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
