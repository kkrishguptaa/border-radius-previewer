FROM --platform=linux/amd64 httpd:2.4.59@sha256:ccc3d666bfdf53adfc2de5ea8d29e5572ab4f86cf92ed5928f8fe958f4dc1dc4

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
