# Assigmnent 4 - Volumnes Mounting and Databases
# Dockerfile: Postgres 
# Dockerfile: MySQL
# Dockerfile: SQLLite 
# Dockerfile: Mongo
# Dockerfile: Nginx 
# Dockerfile: Apache 


# Dockerfile - Node/Express [ Most Simple ]
# dockrize express/nodejs applications 
FROM node:10-alpine 
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "node", "app.js" ]

# Dockerfile - Postgresql  [ Most Simple ]

