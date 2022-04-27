FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.9.1 \
    MATOMO_CHECKSUM=3211e1f58d1de077f7024d5b6a71deed7f8bce2b46a6a00c10ec349803ea1547

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
