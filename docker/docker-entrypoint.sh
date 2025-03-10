#!/bin/bash

CONNECTOR_SERVER_HOME="${CONNECTOR_SERVER_HOME:-/opt/openicf}"
JAVA_OPTS="${JAVA_OPTS:- -server -XX:MaxRAMPercentage=80 -XshowSettings:vm}"
MAIN_CLASS="org.forgerock.openicf.framework.server.Main"
CLASSPATH="$CONNECTOR_SERVER_HOME/lib/framework/*:$CONNECTOR_SERVER_HOME/lib/framework/"

OPENICF_OPTS="\
    -Dconnectorserver.connectorServerName=`hostname` \
    -Dconnectorserver.clientId=${RCS_CLIENT_ID} \
    -Dconnectorserver.clientSecret=${RCS_CLIENT_SECRET}"

echo "Starting RCS with opts $OPENICF_OPTS"

exec java ${JAVA_OPTS} ${OPENICF_OPTS} \
    -Djava.awt.headless=true \
    -classpath "${CLASSPATH}" \
    $MAIN_CLASS -service \
    -properties "$CONNECTOR_SERVER_HOME/conf/ConnectorServer.properties"
