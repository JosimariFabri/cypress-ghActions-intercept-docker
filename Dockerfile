FROM cypress/base:latest

WORKDIR /home/cypress/

RUN apt-get update

COPY . /home/cypress/

VOLUME [ "/home/cypress/mochawesome-reportdocker" ]

RUN npm install

CMD ["npm", "run", "test"]