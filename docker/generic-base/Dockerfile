FROM gcr.io/forgerock-io/java-11:latest
 
ENV CONNECTOR_SERVER_HOME /opt/openicf

COPY --chown=forgerock:root dist/openicf "${CONNECTOR_SERVER_HOME}"
RUN rm -rf "${CONNECTOR_SERVER_HOME}"/connectors
COPY overlay/connectors "${CONNECTOR_SERVER_HOME}"/connectors
COPY overlay/bin/docker-entrypoint.sh ${CONNECTOR_SERVER_HOME}/bin/docker-entrypoint.sh

RUN  chown -R forgerock:root "${CONNECTOR_SERVER_HOME}" \
    && chmod -R g+rwx "${CONNECTOR_SERVER_HOME}"  

USER 11111

ENTRYPOINT ${CONNECTOR_SERVER_HOME}/bin/docker-entrypoint.sh