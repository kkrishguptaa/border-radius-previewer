FROM --platform=linux/amd64 httpd:2.4.59@sha256:95aaffbcc5704086909adcd0f4983bec6961c741afb95cca950cf655bbc19883

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
