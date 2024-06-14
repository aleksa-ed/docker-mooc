FROM node:16-alpine as build-stage

WORKDIR /usr/src/app

COPY . .

ENV REACT_APP_BACKEND_URL=http://192.168.0.32:8080

RUN npm install && npm run build 

FROM nginx:alpine
COPY --from=build-stage /usr/src/app/build/ /usr/share/nginx/html