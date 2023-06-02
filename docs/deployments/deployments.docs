### Delete deployment in current context + namespace
```
$ kubectl --context my-context -n my-namespace delete deployment my-deployment
```

https://theboreddev.com/how-to-destroy-a-kubernetes-deployment/


### Expose existing deployment by creating a service (using NodePort (inline))
```
kubectl expose deployment mydeployment --type=NodePort --name=webapp-service
```

### The same as above (but with dry run & output to file)
```
kubectl expose deployment mydeployment --type=NodePort --name=webapp-service --dry-run=client --output=yaml > manifest.yml
```
