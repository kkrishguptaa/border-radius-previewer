FROM --platform=linux/amd64 httpd:2.4.58@sha256:8120b452a3a1215c4285960c72fddbd00fce17d2e7d10949ddc85e476a8d9ef1

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
