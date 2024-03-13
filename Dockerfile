FROM --platform=linux/amd64 httpd:2.4.58@sha256:8d9b4f5ef61a24176d442fcf74171033de22324337ee07352348824849d6f882

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
