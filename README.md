# proxysql
Basic Docker Tools

# Build Docker image
``` bash
docker buildx build \
    --push --platform linux/amd64 \
    --build-arg BUILD_DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ') \
    --build-arg VCS_REF=$(git rev-parse --short HEAD) \
    --tag sapian/proxysql:latest \
    --tag quay.io/sapian/proxysql:latest \
    --tag sapian/proxysql:2.3.2 \
    --tag quay.io/sapian/proxysql:2.3.2 .
```