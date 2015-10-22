FROM hwestphal/nodebox

COPY ./ /src
WORKDIR /src

RUN echo $HTTP_PROXY
RUN echo $HTTPS_PROXY

#RUN npm install

EXPOSE  8080
CMD ["node", "server.js"]



