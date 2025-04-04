# get image node 14
FROM node:14-alpine
# set workdir to /app
WORKDIR /app
# copy local dir to workdir
COPY . .
# set env
ENV NODE_ENV=production DB_HOST=item-db
# install node dependencies & build
RUN npm install --production --unsafe-perm && npm run build
# expose port to 8080
EXPOSE 8080
# run command npm run start
CMD ["npm", "start"]