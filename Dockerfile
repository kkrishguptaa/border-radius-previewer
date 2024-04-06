FROM --platform=linux/amd64 httpd:2.4.59@sha256:8a1bbe23f2733589625dedde0fb9687419d02cf2ec542c5bd411798b4b47ada3

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
