# Sample docker file for RCS

## Preparation

Unzip the RCS product download into the `dist` directory - e.g.

```
cd docker/generic/dist
unzip ~/Downloads/openicf-zip-1.5.20.28.zip
```

There should now be a `dist/openicf` subdirectory.

Copy the required connectors from the `dist/openicf/connectors` directory to the `overlay/connectors` directory.

```
cd ../overlay/connectors
cp ../../dist/openicf/connectors/ldap-connector-1.5.20.28.jar .
```

## Build image

Build the image with a tag corresponding to the version of RCS downloaded - e.g.

```
docker build -t rcs:1.5.20.28 .
```
