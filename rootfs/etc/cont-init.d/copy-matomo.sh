#!/usr/bin/with-contenv /bin/bash
set -euo pipefail

if [[ -f core/Version.php ]]; then
	installed_version=$(grep VERSION core/Version.php | sed -E "s/.*'(.*)'.*/\\1/")
	if [ -n "${installed_version}" ] && [[ ${installed_version} == ${MATOMO_VERSION} ]]; then
		echo "Matomo installation is up-to-date." >&2
		exit 0
	fi
fi

echo "No Matomo installation found or not up-to-date" >&2
echo "Installing bundled Matomo version" >&2

tar -xvz -C /var/www --strip-components=1 -f /opt/matomo.tgz

if [[ -f misc/GeoLite2-City.mmdb ]]; then
	curl -sSfL "https://geolite.maxmind.com/download/geoip/database/GeoLite2-City.tar.gz" |
		tar -xz -C misc --strip-components=1 --wildcards '*/GeoLite2-City.mmdb'
fi

chown -R nobody:nogroup /var/www
