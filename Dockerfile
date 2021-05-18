FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=4.3.0 \
    MATOMO_CHECKSUM=e47b1918058a515ec09af23bb04ee39d20e07843e8c401de61d525f14fd6bc65

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
