FROM --platform=linux/amd64 httpd:2.4.63@sha256:24a9d0ccd0b477fb9765b4380164359efedce1b0bfd466e4dc6a9b139e468b57

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
