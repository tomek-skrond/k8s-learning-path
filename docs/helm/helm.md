### Helm - Installation

Ubuntu 20.04

```
curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null
sudo apt-get install apt-transport-https --yes
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update
sudo apt-get install helm
```

### Searching for charts

```
helm search hub wordpress
helm search hub nginx
helm search hub load-balancer
helm search hub haproxy
```

### Search for charts (yaml output)
```
helm search hub haproxy --output=yaml
```


### Install helm chart
```
root@master1:~# helm install haproxy-charts oci://registry-1.docker.io/bitnamicharts/haproxy
Pulled: registry-1.docker.io/bitnamicharts/haproxy:0.8.2
Digest: sha256:94e031e3bab6799d0afc3d3a65d45c43d3c0300e384e11b79a9b462957622380
NAME: haproxy-charts
LAST DEPLOYED: Fri Jun  2 09:15:33 2023
NAMESPACE: proxy-training
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
CHART NAME: haproxy
CHART VERSION: 0.8.2
APP VERSION: 2.8.0

** Please be patient while the chart is being deployed **
1. HAproxy has been started. You can find out the port numbers being used by HAProxy by running:

    $ kubectl describe svc haproxy-charts --namespace proxy-training
2. Get HAProxy's load balancer IP/hostname:

    NOTE: It may take a few minutes for this to become available.

    You can watch the status by running:

        $ kubectl get svc haproxy-charts --namespace proxy-training -w

    Once 'EXTERNAL-IP' is no longer '<pending>':

        $ kubectl describe svc haproxy-charts --namespace proxy-training | grep Ingress | awk '{print $3}'

3. Configure DNS records corresponding to Kubernetes ingress resources to point to the load balancer IP/hostname found in step 3
```

### Check helm manifest of a service
```
helm get manifest haproxy-charts
```


### Create helm chart
```
helm create webapp1
```

### Install helm release with values
```
helm install mywebapp-release webapp1/ --values mywebapp/values.yaml
```


### Upgrade release
```
helm upgrade mywebapp-release webapp1/ --values webapp1/values.yaml
```
