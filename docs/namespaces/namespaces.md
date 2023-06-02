### Show namespace

```
kubectl get namespaces
```

### Create Namespace in K8s

A `smol` snippet that creates a namespace of a desired name:

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

kubectl create -f namespace-${NAME}.yaml
```

### Switch to a namespace

```
kubectl config set-context --current --namespace=${NAME}
```

### Show current namespace

look at the `namespace` attribute

```
$ kubectl config view --minify

apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: DATA+OMITTED
    server: https://172.16.16.101:6443
  name: kubernetes
contexts:
- context:
    cluster: kubernetes
    namespace: training
    user: kubernetes-admin
  name: kubernetes-admin@kubernetes
current-context: kubernetes-admin@kubernetes
kind: Config
preferences: {}
users:
- name: kubernetes-admin
  user:
    client-certificate-data: REDACTED
    client-key-data: REDACTED
```

