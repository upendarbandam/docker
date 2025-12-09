FROM node:22-alpine as build
WORKDIR /react-app
COPY . .
RUN npm install 
COPY . .
RUN npm install build
#stage-2
FROM nginx:alpine 
WORKDIR /react-app
COPY from--build .
EXPOSE 80
CMD ["nginx","-g","daemon off;"]

