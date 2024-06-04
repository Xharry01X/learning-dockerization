FROM ubuntu

# this all are layers thats why it runs every layer
RUN apt-get update 
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
    RUN apt-get upgrade -y
    RUN apt-get install -y nodejs

    COPY package.json package.json
    COPY package-lock.json package-lock.json
    COPY app.js app.js

    RUN npm install

CMD [ "node","app.js" ]

