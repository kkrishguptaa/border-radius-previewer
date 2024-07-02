FROM --platform=linux/amd64 httpd:2.4.60@sha256:38c3a9fb1fa5e55dcb7b6ca6d48cdac9ce0e39b2db32e1efd608361f6613ebdd

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
