FROM --platform=linux/amd64 httpd:2.4.58@sha256:ad01c94aa4ee2a03eba75c84c1e485f62d29d119792c4ed59e66c5b63ae5c91f

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
