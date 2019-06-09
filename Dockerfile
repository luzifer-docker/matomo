FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=3.9.1 \
    MATOMO_CHECKSUM=6bc6f6429195908806cb53cb1475bf0e938316cf97ec3472f3388669385cb4f9

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
