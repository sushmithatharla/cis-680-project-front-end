FROM node:16.15.1 as build

WORKDIR /cis-680-project-front-end

COPY package*.json ./

RUN npm config set legacy-peer-deps true

RUN npm install --save --legacy-peer-deps

COPY . .

RUN npm run build

CMD ["npm", "start"]
