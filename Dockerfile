# syntax=docker/dockerfile:1

FROM node:18-alpine
WORKDIR /app
COPY package*json ./
RUN npm install
COPY . .
# RUN yarn install --production
RUN npm install - nodemon
# CMD ["node", "src/index.js"]
CMD ["npm", "run", "dev"]
EXPOSE 3000
