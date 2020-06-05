FROM luzifer/alpine-nginx-php

ENV MATOMO_VERSION=3.13.6 \
    MATOMO_CHECKSUM=37cfc81fec00332fbe30696ef4af9902a89d1aadb616144e1e39476b80e148fd

COPY rootfs /
RUN set -ex && /usr/local/bin/container-setup
