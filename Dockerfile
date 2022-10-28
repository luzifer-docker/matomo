FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.12.3 \
    MATOMO_CHECKSUM=890c2ce3f56ef04768a05c79b6870eea3b6c366c8b4daf44d0fe01c283141cbf

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
