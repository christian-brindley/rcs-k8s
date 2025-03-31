# Sample docker file for RCS

## Preparation

Unzip the RCS product download into the `dist` directory. There should now be a `dist/openicf` directory.

Copy the required connectors from the `dist/openicf/connectors` directory to the `overlay/connectors` directory.

## Build image

Build the image with a tag corresponding to the version of RCS downloaded - e.g.

```
docker build -t rcs:1.5.20.28 .
```
