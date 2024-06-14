## BACKEND

I haven't realised that I was already using alpine versions for previous exercises so I checked what the default `go-1.16` image size is. The difference is very noticable, it's `1.07GB` compared to alpine version which is `447MB`.
```
back-default                                                                                             latest            ac313e88fcb2   11 seconds ago      1.07GB
back-nonroot-opt                                                                                         latest            8efed862fb18   12 minutes ago      447MB
```

## FRONTEND

Like it was the case with backend image, I didn't realise that I was already using alpine image. I checked the difference between the default `node:16` and its alpine version. The difference is even more noticable than with backend. Default image is `1.28GB` and alpine version is `483MB`.

```
front-default                                                                                            latest            aaf53c73c731   56 seconds ago      1.28GB
front-nonroot-opt                                                                                        latest            ea47d40d3842   24 minutes ago      483MB
```