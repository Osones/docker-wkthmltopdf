FROM ubuntu:18.04

LABEL maintainer="romain.guichard@alterway.fr"

ENV PKGVER 0.12.4-1

RUN apt update && apt install -y \
    wkhtmltopdf="$PKGVER" \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["wkhtmltopdf"]
