In order to build the application, we need to use a Dockerfile. A Dockerfile is simply a text-based script of instructions that is used to create a container image. The Dockerfile doesn't have any extension. 
Let's now create a Dockerfile.

```
cd getting-started/app
vi Dockerfile
```

Now copy the following content to the Dockerfile
```
FROM node:12-alpine
RUN apk add --no-cache python2 g++ make
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000
```
