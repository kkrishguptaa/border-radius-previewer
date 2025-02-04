FROM --platform=linux/amd64 httpd:2.4.63@sha256:3195404327ecd95b2fa0a5d4eac1f2206bb12996fb2561393f91254759e422b9

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
