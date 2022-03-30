FROM node:16.13.2

WORKDIR /usr/src/ecs-app

COPY ./pakcage.json .
COPY ./package-lock.json .

RUN npm run install

COPY . .

CMD ["npm", "run", "start"]