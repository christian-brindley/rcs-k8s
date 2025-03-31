# Sample helm chart for RCS

## Preparation

Copy the `values.yaml.sample` file to a working `values.yaml`

```
cp values.yaml.sample values.yaml
```

Update the values according to the environment.

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
