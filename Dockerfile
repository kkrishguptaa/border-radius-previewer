FROM --platform=linux/amd64 httpd:2.4.58@sha256:5ee9ec089bab71ffcb85734e2f7018171bcb2d6707f402779d3f5b28190bb1af

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
