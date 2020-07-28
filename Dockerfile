FROM node
COPY package*.json ./
RUN npm ci --only=production
ENV PORT 8080
EXPOSE $PORT
ARG ENV=production
ENV NODE_ENV $ENV
CMD npm run $NODE_ENV
COPY . ./
