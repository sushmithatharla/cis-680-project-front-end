FROM node:14-alpine

WORKDIR /cis-680-project-front-end

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

CMD ["npm", "start"]