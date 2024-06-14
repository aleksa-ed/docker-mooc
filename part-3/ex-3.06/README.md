## BACKEND

Here the difference seems to be less than 1 mb when combining `RUN` commands.

```
back-nonroot-opt                                                                                         latest            8efed862fb18   24 seconds ago   447MB
back-nonroot                                                                                             latest            b0fbe0373845   46 minutes ago   447MB

aleksa@aleksa:~/code/edu/helsinki/docker-mooc/part-3/ex-3.06/back$ docker image history back-nonroot-opt
IMAGE          CREATED         CREATED BY                                      SIZE      COMMENT
8efed862fb18   2 minutes ago   ENTRYPOINT ["./server"]                         0B        buildkit.dockerfile.v0
<missing>      2 minutes ago   USER appuser                                    0B        buildkit.dockerfile.v0
<missing>      2 minutes ago   RUN /bin/sh -c go build &&     adduser appus…   146MB     buildkit.dockerfile.v0
<missing>      2 minutes ago   ENV REQUEST_ORIGIN=http://192.168.0.32:5000     0B        buildkit.dockerfile.v0
<missing>      2 minutes ago   COPY . . # buildkit                             29.9kB    buildkit.dockerfile.v0
<missing>      5 days ago      WORKDIR /usr/src/app                            0B        buildkit.dockerfile.v0
<missing>      5 days ago      EXPOSE map[8080/tcp:{}]                         0B        buildkit.dockerfile.v0
<missing>      2 years ago     /bin/sh -c #(nop) WORKDIR /go                   0B        
<missing>      2 years ago     /bin/sh -c mkdir -p "$GOPATH/src" "$GOPATH/b…   0B        
<missing>      2 years ago     /bin/sh -c #(nop)  ENV PATH=/go/bin:/usr/loc…   0B        
<missing>      2 years ago     /bin/sh -c #(nop)  ENV GOPATH=/go               0B        
<missing>      2 years ago     /bin/sh -c set -eux;  apk add --no-cache --v…   296MB     
<missing>      2 years ago     /bin/sh -c #(nop)  ENV GOLANG_VERSION=1.16.15   0B        
<missing>      2 years ago     /bin/sh -c #(nop)  ENV PATH=/usr/local/go/bi…   0B        
<missing>      2 years ago     /bin/sh -c [ ! -e /etc/nsswitch.conf ] && ec…   17B       
<missing>      2 years ago     /bin/sh -c apk add --no-cache ca-certificates   519kB     
<missing>      2 years ago     /bin/sh -c #(nop)  CMD ["/bin/sh"]              0B        
<missing>      2 years ago     /bin/sh -c #(nop) ADD file:9233f6f2237d79659…   5.59MB    

aleksa@aleksa:~/code/edu/helsinki/docker-mooc/part-3/ex-3.06/back$ docker image history back-nonroot
IMAGE          CREATED          CREATED BY                                      SIZE      COMMENT
b0fbe0373845   47 minutes ago   ENTRYPOINT ["./server"]                         0B        buildkit.dockerfile.v0
<missing>      47 minutes ago   USER appuser                                    0B        buildkit.dockerfile.v0
<missing>      47 minutes ago   RUN /bin/sh -c chown appuser . # buildkit       0B        buildkit.dockerfile.v0
<missing>      47 minutes ago   RUN /bin/sh -c adduser appuser --disabled-pa…   4.68kB    buildkit.dockerfile.v0
<missing>      47 minutes ago   RUN /bin/sh -c go build # buildkit              146MB     buildkit.dockerfile.v0
<missing>      47 minutes ago   ENV REQUEST_ORIGIN=http://192.168.0.32:5000     0B        buildkit.dockerfile.v0
<missing>      47 minutes ago   COPY . . # buildkit                             29.9kB    buildkit.dockerfile.v0
<missing>      5 days ago       WORKDIR /usr/src/app                            0B        buildkit.dockerfile.v0
<missing>      5 days ago       EXPOSE map[8080/tcp:{}]                         0B        buildkit.dockerfile.v0
<missing>      2 years ago      /bin/sh -c #(nop) WORKDIR /go                   0B        
<missing>      2 years ago      /bin/sh -c mkdir -p "$GOPATH/src" "$GOPATH/b…   0B        
<missing>      2 years ago      /bin/sh -c #(nop)  ENV PATH=/go/bin:/usr/loc…   0B        
<missing>      2 years ago      /bin/sh -c #(nop)  ENV GOPATH=/go               0B        
<missing>      2 years ago      /bin/sh -c set -eux;  apk add --no-cache --v…   296MB     
<missing>      2 years ago      /bin/sh -c #(nop)  ENV GOLANG_VERSION=1.16.15   0B        
<missing>      2 years ago      /bin/sh -c #(nop)  ENV PATH=/usr/local/go/bi…   0B        
<missing>      2 years ago      /bin/sh -c [ ! -e /etc/nsswitch.conf ] && ec…   17B       
<missing>      2 years ago      /bin/sh -c apk add --no-cache ca-certificates   519kB     
<missing>      2 years ago      /bin/sh -c #(nop)  CMD ["/bin/sh"]              0B        
<missing>      2 years ago      /bin/sh -c #(nop) ADD file:9233f6f2237d79659…   5.59MB    
```

## FRONTEND

I wasn't able to save much when combining `RUN` commands. I only managed to save 1mb.

```
front-nonroot-opt                                                                                        latest            ea47d40d3842   9 minutes ago    483MB
front-nonroot                                                                                            latest            2c421c5b4782   51 minutes ago   484MB


aleksa@aleksa:~/code/edu/helsinki/docker-mooc/part-3/ex-3.06/front$ docker image history front-nonroot-opt
IMAGE          CREATED              CREATED BY                                      SIZE      COMMENT
ea47d40d3842   49 seconds ago       CMD ["serve" "-s" "-l" "5000" "build"]          0B        buildkit.dockerfile.v0
<missing>      49 seconds ago       USER appuser                                    0B        buildkit.dockerfile.v0
<missing>      49 seconds ago       RUN /bin/sh -c npm install &&     npm instal…   365MB     buildkit.dockerfile.v0
<missing>      About a minute ago   ENV REACT_APP_BACKEND_URL=http://192.168.0.3…   0B        buildkit.dockerfile.v0
<missing>      About a minute ago   COPY . . # buildkit                             708kB     buildkit.dockerfile.v0
<missing>      5 days ago           WORKDIR /usr/src/app                            0B        buildkit.dockerfile.v0
<missing>      5 days ago           EXPOSE map[5000/tcp:{}]                         0B        buildkit.dockerfile.v0
<missing>      10 months ago        /bin/sh -c #(nop)  CMD ["node"]                 0B        
<missing>      10 months ago        /bin/sh -c #(nop)  ENTRYPOINT ["docker-entry…   0B        
<missing>      10 months ago        /bin/sh -c #(nop) COPY file:4d192565a7220e13…   388B      
<missing>      10 months ago        /bin/sh -c apk add --no-cache --virtual .bui…   7.76MB    
<missing>      10 months ago        /bin/sh -c #(nop)  ENV YARN_VERSION=1.22.19     0B        
<missing>      10 months ago        /bin/sh -c addgroup -g 1000 node     && addu…   102MB     
<missing>      10 months ago        /bin/sh -c #(nop)  ENV NODE_VERSION=16.20.2     0B        
<missing>      10 months ago        /bin/sh -c #(nop)  CMD ["/bin/sh"]              0B        
<missing>      10 months ago        /bin/sh -c #(nop) ADD file:32ff5e7a78b890996…   7.34MB    
aleksa@aleksa:~/code/edu/helsinki/docker-mooc/part-3/ex-3.06/front$ docker image history front-nonroot
IMAGE          CREATED          CREATED BY                                      SIZE      COMMENT
2c421c5b4782   42 minutes ago   CMD ["serve" "-s" "-l" "5000" "build"]          0B        buildkit.dockerfile.v0
<missing>      42 minutes ago   USER appuser                                    0B        buildkit.dockerfile.v0
<missing>      42 minutes ago   RUN /bin/sh -c chown appuser . # buildkit       0B        buildkit.dockerfile.v0
<missing>      42 minutes ago   RUN /bin/sh -c adduser appuser --disabled-pa…   4.87kB    buildkit.dockerfile.v0
<missing>      42 minutes ago   RUN /bin/sh -c npm install -g serve # buildk…   6.45MB    buildkit.dockerfile.v0
<missing>      42 minutes ago   RUN /bin/sh -c npm run build # buildkit         8.68MB    buildkit.dockerfile.v0
<missing>      42 minutes ago   ENV REACT_APP_BACKEND_URL=http://192.168.0.3…   0B        buildkit.dockerfile.v0
<missing>      42 minutes ago   COPY . . # buildkit                             708kB     buildkit.dockerfile.v0
<missing>      5 days ago       RUN /bin/sh -c npm install # buildkit           350MB     buildkit.dockerfile.v0
<missing>      5 days ago       COPY package* ./ # buildkit                     693kB     buildkit.dockerfile.v0
<missing>      5 days ago       WORKDIR /usr/src/app                            0B        buildkit.dockerfile.v0
<missing>      5 days ago       EXPOSE map[5000/tcp:{}]                         0B        buildkit.dockerfile.v0
<missing>      10 months ago    /bin/sh -c #(nop)  CMD ["node"]                 0B        
<missing>      10 months ago    /bin/sh -c #(nop)  ENTRYPOINT ["docker-entry…   0B        
<missing>      10 months ago    /bin/sh -c #(nop) COPY file:4d192565a7220e13…   388B      
<missing>      10 months ago    /bin/sh -c apk add --no-cache --virtual .bui…   7.76MB    
<missing>      10 months ago    /bin/sh -c #(nop)  ENV YARN_VERSION=1.22.19     0B        
<missing>      10 months ago    /bin/sh -c addgroup -g 1000 node     && addu…   102MB     
<missing>      10 months ago    /bin/sh -c #(nop)  ENV NODE_VERSION=16.20.2     0B        
<missing>      10 months ago    /bin/sh -c #(nop)  CMD ["/bin/sh"]              0B        
<missing>      10 months ago    /bin/sh -c #(nop) ADD file:32ff5e7a78b890996…   7.34MB 
```