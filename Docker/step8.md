Now that we have successfully built the image and run the container, you might be wondering if there is way to store this image or better yet have a version controlled way for storing the images so that it can be reused anywhere.

Well, thats where Docker Hub comes into picture. 

- Sign up or Sign in to Docker Hub.
- Click the Create Repository button.
- Enter the repo name
- Click the Create button!

To push images to the repo use the following commands:

- docker login -u <YOUR-USER-NAME>
- docker tag <name_of_the_image> <YOUR-USER-NAME>/<name_of_the_repo>
- docker push <YOUR-USER-NAME>/<name_of_the_repo>
