```
aleksa@aleksa:~/code/edu/helsinki/docker-mooc/part-3/ex-3.04$ docker run -e DOCKER_USER=aleksaed  -e DOCKER_PWD=PASSWORD_REDACTED  -v /var/ru
n/docker.sock:/var/run/docker.sock  builder aleksa-ed/docker-mooc-express aleksaed/docker-mooc-express-test
Cloning into 'tmp'...
#0 building with "default" instance using docker driver

#1 [internal] load .dockerignore
#1 transferring context: 2B done
#1 DONE 0.0s

#2 [internal] load build definition from Dockerfile
#2 transferring dockerfile: 95B done
#2 DONE 0.0s

#3 [internal] load metadata for docker.io/library/node:16
#3 DONE 1.3s

#4 [internal] load build context
#4 transferring context: 76.93kB done
#4 DONE 0.0s

#5 [1/3] FROM docker.io/library/node:16@sha256:f77a1aef2da8d83e45ec990f45df50f1a286c5fe8bbfb8c6e4246c6389705c0b
#5 CACHED

#6 [2/3] COPY . .
#6 DONE 0.0s

#7 [3/3] RUN npm install
#7 0.940 
#7 0.940 added 57 packages, and audited 58 packages in 514ms
#7 0.940 
#7 0.940 7 packages are looking for funding
#7 0.940   run `npm fund` for details
#7 0.942 
#7 0.942 1 moderate severity vulnerability
#7 0.942 
#7 0.942 To address all issues, run:
#7 0.942   npm audit fix
#7 0.942 
#7 0.942 Run `npm audit` for details.
#7 0.942 npm notice 
#7 0.942 npm notice New major version of npm available! 8.19.4 -> 10.8.1
#7 0.942 npm notice Changelog: <https://github.com/npm/cli/releases/tag/v10.8.1>
#7 0.942 npm notice Run `npm install -g npm@10.8.1` to update!
#7 0.942 npm notice 
#7 DONE 1.0s

#8 exporting to image
#8 exporting layers 0.0s done
#8 writing image sha256:018314639af29cb7a4dca1a84b72152a5f262fd3a4e3b003a0992dc9c39dc593 done
#8 naming to docker.io/aleksaed/docker-mooc-express-test:latest done
#8 DONE 0.0s
WARNING! Using --password via the CLI is insecure. Use --password-stdin.
WARNING! Your password will be stored unencrypted in /root/.docker/config.json.
Configure a credential helper to remove this warning. See
https://docs.docker.com/engine/reference/commandline/login/#credentials-store

Login Succeeded
The push refers to repository [docker.io/aleksaed/docker-mooc-express-test]
2edc8a3c9d1b: Preparing
602ccdd7f41c: Preparing
be322b479aee: Preparing
d41bcd3a037b: Preparing
fe0d845e767b: Preparing
f25ec1d93a58: Preparing
794ce8b1b516: Preparing
3220beed9b06: Preparing
684f82921421: Preparing
9af5f53e8f62: Preparing
794ce8b1b516: Waiting
3220beed9b06: Waiting
684f82921421: Waiting
9af5f53e8f62: Waiting
f25ec1d93a58: Waiting
be322b479aee: Mounted from aleksaed/docker-mooc-express
fe0d845e767b: Mounted from aleksaed/docker-mooc-express
d41bcd3a037b: Mounted from aleksaed/docker-mooc-express
794ce8b1b516: Mounted from aleksaed/docker-mooc-express
f25ec1d93a58: Mounted from aleksaed/docker-mooc-express
602ccdd7f41c: Pushed
3220beed9b06: Mounted from aleksaed/docker-mooc-express
684f82921421: Mounted from aleksaed/docker-mooc-express
2edc8a3c9d1b: Pushed
9af5f53e8f62: Mounted from aleksaed/docker-mooc-express
latest: digest: sha256:c1e6ff7c837057c15a2fa219605d81411b66850b0d5deac7bdc103be2cc80fa9 size: 2424
Build and push completed successfully! Visit https://hub.docker.com/r/aleksaed/docker-mooc-express-test
```