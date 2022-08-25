Lets create a service using YAML.

YAML Template:

```
apiVersion: v1
kind: Service
metadata:
  name: my-service
spec:
  selector:
    app.kubernetes.io/name: MyApp
  ports:
    - protocol: TCP
      port: 80
      targetPort: 9376
```{{copy}}

`kubectl create -f <service configuration file name>`
