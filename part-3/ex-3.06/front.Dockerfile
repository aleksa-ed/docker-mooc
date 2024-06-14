FROM node:16-alpine

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

ENV REACT_APP_BACKEND_URL=http://192.168.0.32:8080

RUN npm install && \
    npm install -g serve && \
    npm run build && \
    adduser appuser --disabled-password && \
    chown appuser .

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
