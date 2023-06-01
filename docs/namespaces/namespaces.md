### Show namespace

```
kubectl get namespaces
```

### Create Namespace in K8s

`smol` snippet that creates a namespace of a desired name:

```
NAME=proxy-training

touch namespace-${NAME}.yaml

cat >namespace-${NAME}.yaml<<EOF
apiVersion: v1
kind: Namespace
metadata:
  name: ${NAME}
  labels:
    name: ${NAME}
EOF
```

### Switch to a namespace

```
kubectl config set-context --current --namespace=${NAME}
```
