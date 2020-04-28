FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=3.13.5 \
    MATOMO_CHECKSUM=2e5e2f3b1c525d275f50853e4d29f5a4b96735fb65eb7567d34c6f570a195e0f

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
