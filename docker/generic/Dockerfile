# Sample docker file for Ping Remote Connector Service

FROM alpine:3.14

# Install JDK
RUN  apk update && \
  apk upgrade && \
  apk add --no-cache openjdk11 bash

# RCS base directory
ENV CONNECTOR_SERVER_HOME /opt/openicf

# Create RCS user
RUN adduser -D -g rcs -s /bin/sh -h "${CONNECTOR_SERVER_HOME}" rcs

# Install RCS product files
COPY --chown=rcs:rcs dist/openicf "${CONNECTOR_SERVER_HOME}"

# Replace connectors
RUN rm -rf "${CONNECTOR_SERVER_HOME}"/connectors
COPY overlay/connectors "${CONNECTOR_SERVER_HOME}"/connectors

# Replace startup script
COPY overlay/bin/docker-entrypoint.sh ${CONNECTOR_SERVER_HOME}/bin/docker-entrypoint.sh

# RCS ownership
RUN  chown -R rcs:rcs "${CONNECTOR_SERVER_HOME}" \
    && chmod -R g+rwx "${CONNECTOR_SERVER_HOME}"  

USER rcs
WORKDIR "${CONNECTOR_SERVER_HOME}"

ENTRYPOINT ${CONNECTOR_SERVER_HOME}/bin/docker-entrypoint.sh
