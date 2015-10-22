FROM hwestphal/nodebox

COPY ./ /src
WORKDIR /src

ENV HTTP_PROXY="http://10.1.6.1:3128"
ENV HTTPS_PROXY="http://10.1.6.1:3128"

RUN npm install

ENV HTTP_PROXY=""
ENV HTTPS_PROXY=""

EXPOSE  8080
CMD ["node", "server.js"]



