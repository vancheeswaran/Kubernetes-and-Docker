Lets now, create a pod using YAML file!

We will create a `nginx:1.14.2` container!

Use the YAML template below:

```
apiVersion: v1
kind: Pod
metadata:
  name: nginx
spec:
  containers:
  - name: nginx
    image: nginx:1.14.2
    ports:
    - containerPort: 80

``` {{copy}}

`kubectl create -f <name of the yaml file>`
