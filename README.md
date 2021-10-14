# sapiantools
Basic Docker Tools

# Build Docker image
``` bash
docker buildx build --push --platform linux/arm/v7,linux/arm64/v8,linux/amd64 --build-arg BUILD_DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ') --build-arg VCS_REF=$(git rev-parse --short HEAD) --tag sapian/sapiantools:latest --tag quay.io/sapian/sapiantools .
```

