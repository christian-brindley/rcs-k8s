# Copyright 2025 Ping Identity Corporation. All Rights Reserved
#
# Use of this code requires a commercial software license with Ping Identity Corporation.
# or with one of its affiliates. All use shall be exclusively subject
# to such license between the licensee and Ping Identity Corporation.

The conf/ folder contains the following:

- ConnectorServer.properties file: This is the default configuration file for a deployment where the
Remote Connector Server (RCS) will connect to a cloud tenant as a client. It contains the minimum
configuration parameters that one needs to define to connect to the cloud tenant.

- logback.xml file: This is the default configuration file for the RCS logger (logback).
This file can be modified to increase or decrease the log verbosity of the RCS.

- samples folder: This folder contains several ConnectorServer.properties files that will differ
from the default one. It gives samples to use to configure the RCS when not running in a classic
client to cloud tenant mode. These files can be used to overwrite the default ConnectorServer.properties file.

The samples files are the following:

- ConnectorServer.properties.onprem-client: This file should be used when the RCS is deployed as a client in
an on premises deployment.

- ConnectorServer.properties.onprem-server: This file should be used when the RCS is deployed as a server in
an on premises deployment.

- ConnectorServer.properties.cloud-client: This file is a copy of the default ConnectorServer.properties file.

- ConnectorServer.properties.default-parameters: This file contains all the configuration properties that might
be used with the RCS. This is a reference file. It is mainly there to show all the parameters that can be defined
to configure and tune the RCS.

See: https://docs.pingidentity.com/openicf/connector-reference/configure-server.html for more information.
