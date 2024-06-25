FROM node:22-slim

RUN apt update && apt install -y openssl procps git

RUN npm install -g @nestjs/cli@10.3.2 @prisma/client

WORKDIR /home/node/app

USER node

CMD npx prisma migrate dev && npm run start dev && tail -f /dev/null
#CMD npx prisma migrate dev && tail -f /dev/null