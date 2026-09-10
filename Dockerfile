FROM node:18-slim
WORKDIR /app
COPY . .
RUN cd archify && npm install && npm run generate:validators
ENTRYPOINT ["node", "archify/bin/archify.mjs"]
