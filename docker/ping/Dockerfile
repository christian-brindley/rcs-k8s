# 1. Accept build arguments in the FROM instruction.
# @example

ARG RCS_VERSION=1.5.20.28

FROM gcr.io/forgerock-io/rcs:$RCS_VERSION
 
# Merge your custom files with the RCS installation.
# @example
# COPY openicf/conf conf
# COPY openicf/connectors connectors
# COPY openicf/lib lib
# COPY openicf/scripts scripts

COPY openicf/bin/docker-entrypoint.sh bin/docker-entrypoint.sh
RUN rm -rf connectors
COPY openicf/connectors connectors

USER 11111
