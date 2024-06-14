For this exercise I've used my weather app from the previous exercises. I managed to go from `1.16GB` to `48.5MB` by using nginx in combination with alpine to serve static files, instead of relying on default node-18 image. I've used default node-18 image for required npm commands as a build stage in multi-stage builds. 

```
weather-org                                                                                              latest            5557551a37b3   8 seconds ago        1.16GB
weather-opt                                                                                              latest            f8b2ad0058be   About a minute ago   48.5MB
```