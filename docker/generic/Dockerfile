# Sample docker file for Ping Remote Connector Service
# Generic OS base

# OS and version
ARG OS_IMAGE=alpine
ARG OS_VERSION=3.14

FROM ${OS_IMAGE}:${OS_VERSION}

# RCS user and group
ARG RCS_USER=rcs
ARG RCS_GROUP=rcs

# Install JDK
RUN  apk update && \
  apk upgrade && \
  apk add --no-cache openjdk11 bash

# RCS base directory
ENV CONNECTOR_SERVER_HOME /opt/openicf

# Create RCS user
RUN adduser -D -g ${RCS_GROUP} -s /bin/sh -h "${CONNECTOR_SERVER_HOME}" ${RCS_USER}

# Install RCS product files
COPY dist/openicf "${CONNECTOR_SERVER_HOME}"

# Replace connectors
RUN rm -rf "${CONNECTOR_SERVER_HOME}"/connectors
COPY overlay/connectors "${CONNECTOR_SERVER_HOME}"/connectors

# Replace startup script
COPY overlay/bin/docker-entrypoint.sh ${CONNECTOR_SERVER_HOME}/bin/docker-entrypoint.sh

# RCS ownership
RUN  chown -R ${RCS_USER}:${RCS_GROUP} ${CONNECTOR_SERVER_HOME}

USER ${RCS_USER}
WORKDIR "${CONNECTOR_SERVER_HOME}"

ENTRYPOINT "${CONNECTOR_SERVER_HOME}/bin/docker-entrypoint.sh"
