```
aleksa@aleksa:~/code/edu/helsinki/docker-mooc/part-1/ex-1.8$ docker build . -t web-server
[+] Building 0.0s (5/5) FINISHED                                                                                                                          docker:default
 => [internal] load .dockerignore                                                                                                                                   0.0s
 => => transferring context: 2B                                                                                                                                     0.0s
 => [internal] load build definition from Dockerfile                                                                                                                0.0s
 => => transferring dockerfile: 97B                                                                                                                                 0.0s
 => [internal] load metadata for docker.io/devopsdockeruh/simple-web-service:alpine                                                                                 0.0s
 => [1/1] FROM docker.io/devopsdockeruh/simple-web-service:alpine                                                                                                   0.0s
 => exporting to image                                                                                                                                              0.0s
 => => exporting layers                                                                                                                                             0.0s
 => => writing image sha256:7a1932bcdd702eeecddf6b2b507fc98a660175298699c892e16710539660d883                                                                        0.0s
 => => naming to docker.io/library/web-server                                                                                                                       0.0s
aleksa@aleksa:~/code/edu/helsinki/docker-mooc/part-1/ex-1.8$ docker run web-server
[GIN-debug] [WARNING] Creating an Engine instance with the Logger and Recovery middleware already attached.

[GIN-debug] [WARNING] Running in "debug" mode. Switch to "release" mode in production.
 - using env:   export GIN_MODE=release
 - using code:  gin.SetMode(gin.ReleaseMode)

[GIN-debug] GET    /*path                    --> server.Start.func1 (3 handlers)
[GIN-debug] Listening and serving HTTP on :8080
```

![ex1.8](ex-1.8.png)