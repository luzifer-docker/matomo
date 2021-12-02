#!/bin/bash
set -euo pipefail

### ---- ###

echo "Switch back to master"
git checkout master
git reset --hard origin/master

### ---- ###

version=$(curl -s "https://lv.luzifer.io/v1/catalog/matomo/latest/version")
grep -q "MATOMO_VERSION=${version} " Dockerfile && exit 0 || echo "Update required"

filehash=$(curl -sSfL "https://builds.matomo.org/piwik-${version}.tar.gz" | sha256sum | cut -d ' ' -f 1)

sed -Ei \
	-e "s/MATOMO_VERSION=[0-9.]+/MATOMO_VERSION=${version}/" \
	-e "s/MATOMO_CHECKSUM=[a-z0-9]+/MATOMO_CHECKSUM=${filehash}/" \
	Dockerfile

### ---- ###

echo "Testing build..."
docker build .

### ---- ###

echo "Updating repository..."
git add Dockerfile
git -c user.name='Travis Automated Update' -c user.email='travis@luzifer.io' \
	commit -m "Matomo ${version}"
git tag ${version}

git push -q https://${GH_USER}:${GH_TOKEN}@github.com/luzifer-docker/matomo master --tags
