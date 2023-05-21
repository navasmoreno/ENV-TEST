#Descarga la imagen node para instalar angular
FROM node:lts-alpine3.16

WORKDIR /usr/src/app

RUN npm install -g @angular/cli

# Para un nuevo proyecto
# CMD cd ..; ng new app --force=true --defaults=true --style=scss --routing=true; chmod 777 -R ./app; cd app;

#Para proyecto migrado
# COPY package*.json 
# CMD mkdir ./node_modules; npm install; npm start;

# Para proyecto en desarrollo
CMD  chmod 777 -R ./app; npm start;

EXPOSE 4200
