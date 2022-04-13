FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.9.0 \
    MATOMO_CHECKSUM=1e705bf56f9afe2f0a08e127e94d7f4915424bf5330e0f98532958a79d6703cc

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
