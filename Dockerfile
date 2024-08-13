FROM --platform=linux/amd64 httpd:2.4.62@sha256:3f71777bcfac3df3aff5888a2d78c4104501516300b2e7ecb91ce8de2e3debc7

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
