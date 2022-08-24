Now lets explore a scenario in which we have multiple containers

we now want to add MySQL to the application stack. The following question often arises - “Where will MySQL run? Install it in the same container or run it separately?” In general, each container should do one thing and do it well. A few reasons:

- There’s a good chance you’d have to scale APIs and front-ends differently than databases
- Separate containers let you version and update versions in isolation
- While you may use a container for the database locally, you may want to use a managed service for the database in production. You don’t want to ship your database engine with your app then.
- Running multiple processes will require a process manager (the container only starts one process), which adds complexity to container startup/shutdown

Remember that containers, by default, run in isolation and don’t know anything about other processes or containers on the same machine. So, how do we allow one container to talk to another? The answer is networking. Now, you don’t have to be a network engineer. Simply remember this rule: if two containers are on the same network, they can talk to each other. If they aren’t, they can’t.

There are two ways to put a container on a network: 1) Assign it at start or 2) connect an existing container. For now, we will create the network first and attach the MySQL container at startup.

Create a network first

`docker network create todo-app`

Start MySQL

`docker run -d --network todo-app --network-alias mysql -v todo-mysql-data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=secret -e MYSQL_DATABASE=todos mysql:5.7`

Check MySQL

`docker exec -it <mysql-container-id> mysql -u root -p`

When the password prompt comes up, type in secret. In the MySQL shell, list the databases and verify you see the todos database.

`SHOW DATABASES;`

exit the container

