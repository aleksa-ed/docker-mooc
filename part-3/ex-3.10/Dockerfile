FROM node:18 as build-stage

WORKDIR /usr/src/app

COPY . .
RUN npm install
ARG VITE_API_KEY
ENV VITE_API_KEY=$VITE_API_KEY
RUN npm run build

FROM nginx:alpine
COPY --from=build-stage /usr/src/app/dist/ /usr/share/nginx/html