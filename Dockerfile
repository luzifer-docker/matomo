FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=3.13.0 \
    MATOMO_CHECKSUM=362d24c06a090d1584331590a846147cac9360c22fdd556b28fb634d6c9d280a

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
