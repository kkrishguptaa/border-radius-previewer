FROM --platform=linux/amd64 httpd:2.4.62@sha256:e0d9d65d36b0c8337359922fad1191ccbe9bcf52d68c819207897e04a3db465b

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
