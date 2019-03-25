FROM node:8-alpine
RUN apk add git
WORKDIR /usr/src/app
COPY . .
RUN npm install 
RUN npm install -g
RUN mkdir -pv /data
WORKDIR /data
ENTRYPOINT [ "/usr/local/bin/kcm" ]
