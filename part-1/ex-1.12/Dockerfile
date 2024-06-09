FROM node:16-alpine

EXPOSE 5000

WORKDIR /usr/src/app

# trick to improve build times in case files change in the future
COPY package* ./

RUN npm install

COPY . .

ENV REACT_APP_BACKEND_URL=http://192.168.0.32:8080

RUN npm run build

RUN npm install -g serve

CMD ["serve", "-s", "-l", "5000", "build"]
