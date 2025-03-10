# 1. Accept build arguments in the FROM instruction.
# @example
ARG RCS_VERSION=1.5.20.28
FROM gcr.io/forgerock-io/rcs:$RCS_VERSION

# 2. Merge your custom files with the RCS installation.
# @example
# COPY openicf/conf conf
# COPY openicf/connectors connectors
# COPY openicf/lib lib
# COPY openicf/scripts scripts

COPY docker-entrypoint.sh bin/docker-entrypoint.sh

# 3. Use root user for operations that escalate permissions.
# @example
# USER root

# 4. Add untrusted public TLS certificate(s) to RCS' `truststore` to allow for communications with unrecognized hosts.
# Run `docker build` with the `--progress plain` option to check the outcome of the RUN instruction.
# @example
# COPY openicf/security/BadSSL-Untrusted-Root-Certificate-Authority.cer /opt/openicf/security
# RUN keytool -keystore $JAVA_HOME/lib/security/cacerts -storepass changeit -trustcacerts -import -file /opt/openicf/security/BadSSL-Untrusted-Root-Certificate-Authority.cer -alias badssl-com-untrusted-root-ca -noprompt

# 5. Switch back to a non-root user.
# @example
USER 11111
