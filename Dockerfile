FROM --platform=linux/amd64 httpd:2.4.59@sha256:170424714efe2d89a731eac94767d97da09024e26866b548ddf4d65e89cadfaf

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
