FROM node:alpine3.20

USER node
WORKDIR /home/node/app

COPY --chown=node:node ./WIK-DPS-TP01 /home/node/app


RUN npm install && npx tsc

EXPOSE 3000
CMD ["node", "./build/index.js"]



