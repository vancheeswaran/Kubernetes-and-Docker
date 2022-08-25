Lets try to update our codebase now and see how we can update the docker container

What to remove: <p className="text-center">No items yet! Add one above!</p>
What to add: `<p className="text-center">You have no todo items yet! Add one above!</p>`
Where: src/static/js/app.js
How: Use the editor option in the top left corner

Lets build the latest verison now

`docker build -t getting-started .`

Run the container next

`docker run -dp 3000:3000 getting-started`
