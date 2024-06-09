FROM node:18-alpine

EXPOSE 8080

WORKDIR /usr/src/app

# trick to improve build times in case files change in the future
COPY package* ./

RUN npm install

COPY . .

# required for railway.app to inject env variables
# https://docs.railway.app/guides/dockerfiles
ARG VITE_API_KEY
ENV VITE_API_KEY=$VITE_API_KEY
RUN npm run build

CMD ["node", "index.cjs"]
