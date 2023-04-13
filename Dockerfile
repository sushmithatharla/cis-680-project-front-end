FROM node:16.15.1 as build

WORKDIR /cis-680-project-front-end

COPY package*.json .

RUN npm install

COPY . .

RUN npm run build

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

COPY --from=build /lit-clothing/build /usr/share/nginx/html

CMD ["npm", "start"]
