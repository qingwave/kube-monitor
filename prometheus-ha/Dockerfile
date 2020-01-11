FROM alpine:latest
COPY --from=cr.d.xiaomi.net/containercloud/prometheus:v2.15.1 /bin/prometheus /bin/
RUN apk update &&\
    apk add curl &&\
    mkdir -p /prometheus

EXPOSE     9090
VOLUME     [ "/prometheus" ]
WORKDIR    /prometheus