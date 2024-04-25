FROM --platform=linux/amd64 httpd:2.4.59@sha256:43f871bb787664a51bdff7984a39cea26237b2faa3ea0e768a968176c63a8aaf

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
