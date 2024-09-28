FROM --platform=linux/amd64 httpd:2.4.62@sha256:7c18e2ad8d7277ced0f750bf8c8fbfff1d167891b5a0a5b60f7ec4c985b3b558

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
