FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=3.13.1 \
    MATOMO_CHECKSUM=c51283319a9e172491df3db6318b84bdde5c954b616889649935c8aea6e0b189

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
