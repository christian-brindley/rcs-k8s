# Sample helm chart for RCS

## Preparation

Copy the `values.yaml.sample` file to a working `values.yaml`

```
cp values.yaml.sample values.yaml
```

Update the values according to the environment:

- `idmEndpoints/wss` - the WSS URL for the IDM endpoint

- `idmEndpoints/token` - the OAuth2 token endpoint for RCS to request an access token for communication with IDM

- `tenantIp` - the IP address for the IDM service (e.g. Identity Cloud tenant)

- `logLevels` - adjust according to log level requirements - e.g. `DEBUG` for test systems

- `trustedCerts` - certificates to be installed in the RCS trust store - e.g. issuing CA for LDAPS server certificates to enable connector trust. Any unique name may be used for each certificate.

- `credentials/clientId` - The OAuth2 client ID for acquiring an access token

- `credentials/clientSecret` - The OAuth2 client secret for the above client ID.

The sample templates assume that the values for `clientId` and `clientSecret` are provisioned as environment based secrets.

## Install

Install the RCS helm chart in the current namespace

```
helm install rcs ./rcs
```

There should now be running RCS pod(s) - e.g. with 2 replicas:

```
% k get pods
NAME    READY   STATUS    RESTARTS   AGE
rcs-0   1/1     Running   0          50s
rcs-1   1/1     Running   0          50s
```
