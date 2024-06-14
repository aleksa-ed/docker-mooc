FROM golang:1.16-alpine

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

ENV REQUEST_ORIGIN=http://192.168.0.32:5000

RUN go build && \
    adduser appuser --disabled-password && \
    chown appuser .

USER appuser

ENTRYPOINT ["./server"]
