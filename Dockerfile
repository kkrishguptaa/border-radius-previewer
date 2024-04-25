FROM --platform=linux/amd64 httpd:2.4.59@sha256:6ca7a7be7a0770d8204711e143558040063efc113ff7320ab1deb421cb4d0243

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
