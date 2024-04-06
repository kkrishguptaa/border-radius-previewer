FROM --platform=linux/amd64 httpd:2.4.59@sha256:fb4e3ced4133e712b9ab38f3f0f6e1e2457f42a966d8bd097ec470b3ad5ac037

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
