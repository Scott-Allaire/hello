# Hello Project
This is an extremely simple Spring Boot app I create for learning more about Docker and Kubernetes.

## Build Container
* ./gradlew bootJar
* docker build -t hello-app .

## Publish to Repository
* docker tag hello-app <hostname>:<port>/hello-app:0.0.1
* docker push <hostname>:<port>/hello-app:0.0.1

NOTE: assumes that docker registry is running locally at port 5000

## Deploy to Kubernetes
* kubectl apply -f hello-app-pod.yaml
