FROM --platform=linux/amd64 httpd:2.4.59@sha256:610973cadbdf5dd8838d7ed2c028698137df4c2765518d6eab5b2ef15414e30d

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
