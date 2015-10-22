FROM hwestphal/nodebox

COPY ./ /src
WORKDIR /src

export HTTP_PROXY="http://10.1.6.1:3128"
export HTTPS_PROXY="http://10.1.6.1:3128"

RUN npm install

EXPOSE  8080
CMD ["node", "server.js"]



