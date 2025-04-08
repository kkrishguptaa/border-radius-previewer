FROM --platform=linux/amd64 httpd:2.4.63@sha256:4564ca7604957765bd2598e14134a1c6812067f0daddd7dc5a484431dd03832b

COPY src/ /usr/local/apache2/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
