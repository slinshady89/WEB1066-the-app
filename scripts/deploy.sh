#!/usr/bin/env #!/usr/bin/env bash
set -e

docker login --username "${DOCKER_LOGIN}" --password "${DOCKER_PASSWORD}"
docker tag zutherb/monolithic-shop:latest ${DOCKER_USERNAME}/monolithic-shop:latest
docker push ${DOCKER_USERNAME}/monolithic-shop:latest
