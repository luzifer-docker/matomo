FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.13.1 \
    MATOMO_CHECKSUM=9469e8256d458e74038468324a17736da1027b139b1fbe38cf3384a415dd01ed

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
