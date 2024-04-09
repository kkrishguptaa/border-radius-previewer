FROM --platform=linux/amd64 httpd:2.4.59@sha256:a3d42a9226989826c1599228dc5305b9a0143c1180165216f262162f6c66759c

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
