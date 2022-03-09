FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.8.0 \
    MATOMO_CHECKSUM=cf0f180f689e4f71b45b6c507ffab00ecfe2a00ea56fe26ffa7a7f50822b6c74

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
