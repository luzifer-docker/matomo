#!/usr/bin/with-contenv /bin/bash
set -euo pipefail

geoip_timeout=604800

echo "Checking GeoIP database..."
if [[ ! -f misc/GeoLite2-City.mmdb ]] || [[ $(($(date +%s) - $(stat -c %Z misc/GeoLite2-City.mmdb))) -gt ${geoip_timeout} ]]; then
	curl -sSfL "https://geolite.maxmind.com/download/geoip/database/GeoLite2-City.tar.gz" |
		tar -xz -C misc --strip-components=1 --wildcards '*/GeoLite2-City.mmdb'
fi

chown nobody:nogroup /var/www/misc/GeoLite2-City.mmdb
