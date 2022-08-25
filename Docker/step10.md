With the previous experiment, we saw that each container starts from the image definition each time it starts. While containers can create, update, and delete files, those changes are lost when the container is removed and all changes are isolated to that container. With volumes, we can change all of this.

Volumes provide the ability to connect specific filesystem paths of the container back to the host machine. If a directory in the container is mounted, changes in that directory are also seen on the host machine. If we mount that same directory across container restarts, we’d see the same files.

By default, the todo app stores its data in a SQLite Database at `/etc/todos/todo.db` in the container’s filesystem.

Lets now create a volume 
` docker volume create todo-db`

Stop and remove the todo app container once again in the Dashboard (or with docker rm -f id), as it is still running without using the persistent volume.

Now restart the container,

`docker run -dp 3000:3000 -v todo-db:/etc/todos getting-started`

Once the container starts up, open the app and add a few items to your todo list.

Stop and remove the container for the todo app. Use `docker ps` to get the ID and then `docker rm -f <id>` to remove it.

Start a new container using the same command from above.

Open the app. You should see your items still in your list!

Go ahead and remove the container when you’re done checking out your list.

We now know how to persist data!
