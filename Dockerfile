FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=3.13.3 \
    MATOMO_CHECKSUM=f63fbadc06a48d586aeba3e87844cfda4f5a67e66d147653b5c37ccf8fc7c639

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
