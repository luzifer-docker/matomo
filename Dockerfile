FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.7.0 \
    MATOMO_CHECKSUM=efcc8cfd67a82869dc856a954af902935f179645abc347d9b26a9c88837d206d

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
