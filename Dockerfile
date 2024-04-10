FROM --platform=linux/amd64 httpd:2.4.59@sha256:c21840a93471e3e4fb0c74540302491e7a101344d27eacb005f32c8a1e758417

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
