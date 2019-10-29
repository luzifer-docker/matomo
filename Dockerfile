FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=3.12.0 \
    MATOMO_CHECKSUM=d8274b84c13851b86c12e346f677c206776973212a664d64bd3e44f46dc0af6a

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
