FROM node:20-alpine

WORKDIR /app/medusa

COPY . .

RUN npm install -g @medusajs/medusa-cli@latest
RUN yarn install

COPY . .

EXPOSE 9000 5173

ENTRYPOINT ["sh", "./start.sh"]
