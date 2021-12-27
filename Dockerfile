FROM node:12.18.1
ENV NODE_ENV=production

WORKDIR /email-system

COPY . /

RUN npm install --production

COPY . .

CMD [ "node", "app.js" ]

#email-system-nodejs