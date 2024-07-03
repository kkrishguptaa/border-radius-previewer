FROM --platform=linux/amd64 httpd:2.4.60@sha256:9738e4f0bfa4b0e5d78318ad858ec04747d98f60afccf9f7757362e948d3990c

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
