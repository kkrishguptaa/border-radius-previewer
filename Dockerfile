FROM --platform=linux/amd64 httpd:2.4.59@sha256:73b2e9e2861bcfe682b9a67d83433b6a6b36176459134aa25ec711058075fd47

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
