FROM --platform=linux/amd64 httpd:2.4.61@sha256:fad0c8311b35c689cf1b94fc4783e735a8e3086aebfe318c4e8e0fa224e9ce1b

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
