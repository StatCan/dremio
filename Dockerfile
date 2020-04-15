FROM dremio/dremio-oss:4.2.1

USER dremio
WORKDIR /opt/dremio

ENV DREMIO_HOME /opt/dremio
ENV DREMIO_GC_LOGS_ENABLED="no"
ENV DREMIO_LOG_DIR="/var/log/dremio"
ENV SERVER_GC_OPTS="-XX:+PrintGCDetails -XX:+PrintGCDateStamps"
ENTRYPOINT ["bin/dremio", "start-fg"]
