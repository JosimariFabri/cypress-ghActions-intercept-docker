FROM cypress/base:latest

WORKDIR /home/cypress/

RUN apt-get update

COPY . /home/cypress/

RUN npm install

RUN npx cypress install --version 13.13.1

VOLUME [ "/home/cypress/mochawesome-reportdocker" ]

CMD ["npm", "run", "test"]