FROM node:16.13.2

WORKDIR /usr/src/ecs-app

COPY ./package.json .

COPY ./package-lock.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "run", "start"]