Now that we know MySQL is up and running, let’s use it! But, the question is... how? If we run another container on the same network, how do we find the container (remember each container has its own IP address)?

To figure it out, we’re going to make use of the nicolaka/netshoot container, which ships with a lot of tools that are useful for troubleshooting or debugging networking issues.

Start the container
`docker run -it --network todo-app nicolaka/netshoot`

Inspect the network
`dig mysql`

In the “ANSWER SECTION”, you will see an A record for mysql that resolves to 172.23.0.2 (your IP address will most likely have a different value). While mysql isn’t normally a valid hostname, Docker was able to resolve it to the IP address of the container that had that network alias (remember the --network-alias flag we used earlier?).

What this means is... our app only simply needs to connect to a host named mysql and it’ll talk to the database!
