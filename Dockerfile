FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.7.1 \
    MATOMO_CHECKSUM=f04fccd5c3007230ce769b703427d52410e32be985ba08fe1b0e3a59b75e13fd

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
