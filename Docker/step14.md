The last hurdle!

The todo app supports the setting of a few environment variables to specify MySQL connection settings. They are:

- MYSQL_HOST - the hostname for the running MySQL server
- MYSQL_USER - the username to use for the connection
- MYSQL_PASSWORD - the password to use for the connection
- MYSQL_DB - the database to use once connected

!!! While using env vars to set connection settings is generally ok for development, it is HIGHLY DISCOURAGED when running applications in production. 

if using MySQL 8.0 < use the following command before proceeding further

` ALTER USER 'root' IDENTIFIED WITH mysql_native_password BY 'secret';`
`flush privileges;`
 
 Run the TODO container
 
 `docker run -dp 3000:3000 \
   -w /app -v "$(pwd):/app" \
   --network todo-app \
   -e MYSQL_HOST=mysql \
   -e MYSQL_USER=root \
   -e MYSQL_PASSWORD=secret \
   -e MYSQL_DB=todos \
   node:12-alpine \
   sh -c "yarn install && yarn run dev"`

Look into the logs

`docker logs <container-id>`

Now add a few items in the TODO webapp and then lets connect to MySQL and verify if it is working fine
`docker exec -it <mysql-container-id> mysql -p todos`
`select * from todo_items;`


