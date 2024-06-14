FROM node:16-alpine

EXPOSE 5000

WORKDIR /usr/src/app



COPY package* ./

RUN npm install

COPY . .

ENV REACT_APP_BACKEND_URL=http://192.168.0.32:8080

RUN npm run build

RUN npm install -g serve

RUN adduser appuser --disabled-password
RUN chown appuser .
USER appuser


CMD ["serve", "-s", "-l", "5000", "build"]
