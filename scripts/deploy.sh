#!/usr/bin/env #!/usr/bin/env bash
set -e

echo "${DOCKER_PASSWORD}" | docker login --username "${DOCKER_LOGIN}" --password-stdin
docker tag zutherb/monolithic-shop:latest ${DOCKER_USERNAME}/monolithic-shop:latest
docker push "${DOCKER_USERNAME}"/monolithic-shop:latest
