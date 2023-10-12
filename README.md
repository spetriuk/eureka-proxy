# eureka-proxy


This service is a simple Spring Cloud Eureka Client, functions as a proxy for the REST calls to a specified server. 
Can be used with mock APIs to simulate Eureka client behavior in controlled environments.

>Docker image: [spetriuk/eureka-proxy](https://hub.docker.com/repository/docker/spetriuk/eureka-proxy)

#### Build and Run the Application
To build this Spring Boot application, use the following Maven command:
```
mvn clean package
```
To run your Spring Boot application, use the following Maven command:
```
java -jar target/eureka-proxy-0.0.1-SNAPSHOT.jar
```

#### Environment Variables:

| Variable          | Default value                 | Description                                    |
|-------------------|-------------------------------|------------------------------------------------|
| SERVICE_NAME      | eureka-proxy                  | Name of the service to be registered in Eureka |
| API_URL           | -                             | URL to which requests will be proxied          |
| EUREKA_SERVER_URL | http://localhost:8761/eureka/ | URL of your Spring Eureka Server               |
| PORT              | 8080                          | Port for running this service                  |

#### Docker Compose example:

```yaml
version: "3"
services:
  eureka-proxy-service-1:
    image: spetriuk/eureka-proxy:latest
    environment:
      SERVICE_NAME: SERVICE_1
      API_URL: https://my-mock-api.dev
      EUREKA_SERVER_URL: https://my-eureka-server:8761/eureka/
      PORT: 8081
    ports:
      - 8081:8081
```

