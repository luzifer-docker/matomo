FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.0.1 \
    MATOMO_CHECKSUM=fcc579fe9d78bbfd18f82a0f4a2c9487f733d483bff83303ca99858a6ca643c1

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
