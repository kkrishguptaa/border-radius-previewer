FROM --platform=linux/amd64 httpd:2.4.62@sha256:f4c5139eda466e45814122d9bd8b886d8ef6877296126c09b76dbad72b03c336

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
