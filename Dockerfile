FROM --platform=linux/amd64 httpd:2.4.60@sha256:3942d5264ac48f4068ff9dbb1da6ebdafbfef8c0f13f31e89a8a697dfbecb485

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
