FROM node:22-slim

RUN apt update && apt install -y openssl procps

RUN npm install -g @nestjs/cli@10.3.2

WORKDIR /home/node/ap

USER node

CMD npx prisma migrate dev && npm run start dev && tail -f /dev/null