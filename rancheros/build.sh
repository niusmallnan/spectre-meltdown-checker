#!/bin/bash
set -e

read -p "Enter spectre-meltdown-checker version(master): " VERSION
VERSION=${VERSION:-master}

URL="https://raw.githubusercontent.com/speed47/spectre-meltdown-checker/${VERSION}/spectre-meltdown-checker.sh"

curl -L -o $(dirname $0)/spectre-meltdown-checker.sh ${URL}
chmod +x $(dirname $0)/spectre-meltdown-checker.sh

TAG=${VERSION}
if [ "${TAG}" = "master" ]; then
    TAG=latest
fi
cd $(dirname $0)
docker build -t niusmallnan/spectre-meltdown-checker:${TAG} .
