FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=3.11.0 \
    MATOMO_CHECKSUM=a8da87e2e7a5acab6653fe581e6fa0cf948a0a03826966d5c832f5b20f774f8c

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
