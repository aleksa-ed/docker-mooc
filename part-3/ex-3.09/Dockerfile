FROM golang:1.16 as build-stage

WORKDIR /usr/src/app
COPY . .
ENV REQUEST_ORIGIN=http://192.168.0.32:5000
RUN GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o server

FROM scratch
WORKDIR /app
COPY --from=build-stage /usr/src/app/server /app/server
COPY --from=build-stage /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/

EXPOSE 8080
ENTRYPOINT ["./server"]
