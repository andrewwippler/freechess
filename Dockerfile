FROM node:20

ENV PORT=3000

WORKDIR /usr/src/app
ADD . .

RUN npm i && npm run build

EXPOSE 3000

CMD ["node" ,"dist/index.js"]