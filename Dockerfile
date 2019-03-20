FROM node:8-alpine
WORKDIR /usr/src/app
COPY . .
RUN npm install 
RUN npm install -g
ENTRYPOINT [ "/usr/local/bin/kcm" ]
