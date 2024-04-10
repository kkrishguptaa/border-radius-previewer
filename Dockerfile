FROM --platform=linux/amd64 httpd:2.4.59@sha256:bb17569997412ca504a8058694a71f4f4219614de8d51689c25924c69f17c62a

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
