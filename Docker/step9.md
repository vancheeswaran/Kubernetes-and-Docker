In case you didn’t notice, our todo list is being wiped clean every single time we launch the container. Why is this? Let’s dive into how the container is working.
When a container runs, it uses the various layers from an image for its filesystem. Each container also gets its own “scratch space” to create/update/remove files. Any changes won’t be seen in another container, even if they are using the same image.

Lets first create a container
` docker run -d ubuntu bash -c "shuf -i 1-10000 -n 1 -o /data.txt && tail -f /dev/null"`
Lets check the file it generates
`docker exec <container-id> cat /data.txt`
Lets start another container and check 
`docker run -it ubuntu ls /`
And look! There’s no data.txt file there! That’s because it was written to the scratch space for only the first container.
Go ahead and remove the first container 
`docker rm -f <container-id>`
