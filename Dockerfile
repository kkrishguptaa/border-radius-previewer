FROM --platform=linux/amd64 httpd:2.4.59@sha256:9da0182cd07bc6898941dfefe078b80ee37ba355384dd6f6d012c16566174d53

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
