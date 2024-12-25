FROM --platform=linux/amd64 httpd:2.4.62@sha256:337ad42e78c00e0bebb9fd0bccb65b1a17bfc4a4bfaf4c0238f09f08af35d688

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
