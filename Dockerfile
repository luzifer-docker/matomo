FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.6.2 \
    MATOMO_CHECKSUM=ca013604753daadfb982b3f59670402853066d460f0aefc5b5b6f1d0669ff9b1

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
