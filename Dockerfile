FROM proxysql/proxysql:2.3.2

RUN apt-get update && apt-get install -y \
    netcat \
    && rm -rf /var/lib/apt/lists/*

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="proxysql" \
      org.label-schema.description="High-performance MySQL proxy with a GPL license." \
      org.label-schema.url="www.proxysql.com" \
      org.label-schema.vcs-url="https://github.com/sapianco/docker-proxysql" \
      org.label-schema.maintainer="sebastian.rojo@sapian.com.co" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vendor1="Sapian" \
      org.label-schema.version=$VERSION
