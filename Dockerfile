FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=3.10.0 \
    MATOMO_CHECKSUM=d4749d6839b6939d981ef5b30217adfc0d22b99e7b06ec3e0ec0070788c86be3

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
