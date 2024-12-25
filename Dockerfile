FROM --platform=linux/amd64 httpd:2.4.62@sha256:72f6e24600718dddef131de7cb5b31496b05c5af41e9db8707df371859a350bb

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
