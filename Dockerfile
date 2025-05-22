FROM --platform=linux/amd64 httpd:2.4.63@sha256:09cb4b94edaaa796522c545328b62e9a0db60315c7be9f2b4e02204919926405

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
