FROM --platform=linux/amd64 httpd:2.4.58@sha256:d21b5684653aebe8fbc4077ff66b3d370f9b703ade5a11aea3cadf076652a4f1

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
