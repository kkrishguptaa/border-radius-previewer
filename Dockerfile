FROM --platform=linux/amd64 httpd:2.4.63@sha256:6554e98a1dd7894e188e17bd2426ba455542ee24f8eedbaffc546537f3ecd109

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
