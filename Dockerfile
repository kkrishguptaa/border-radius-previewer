FROM --platform=linux/amd64 httpd:2.4.62@sha256:5cf728b5fe25ecccb3e6dfb774885747e24f6832558cff64fa0ac59e186dca07

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
