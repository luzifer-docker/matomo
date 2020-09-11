FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=3.14.1 \
    MATOMO_CHECKSUM=4d1314dbbf0128e61fde5953dca764d912617aab70b4f53e088211d0eb859a60

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
