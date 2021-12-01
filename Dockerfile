FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.6.1 \
    MATOMO_CHECKSUM=4f2a671a13e4a28f036538decf786f6abaabcfcdba9990c9b9cc150c54f12f85

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
