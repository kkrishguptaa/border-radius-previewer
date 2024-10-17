FROM --platform=linux/amd64 httpd:2.4.62@sha256:880c7d7491ede184448c0d214047e138c2f3fd1f189a4162b610496c37b1116a

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
