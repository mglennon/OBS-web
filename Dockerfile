FROM alpine:latest as build


# Download and unpack it.
WORKDIR /tmp
RUN wget https://github.com/Niek/obs-web/archive/gh-pages.zip \
    && unzip gh-pages.zip \
    && rm gh-pages.zip \



FROM httpd:latest
COPY --from=build /tmp/gh-pages /usr/local/apache2/htdocs