FROM hwestphal/nodebox

COPY ./ /src
WORKDIR /src
RUN echo "HTTP_PROXY is " $HTTP_PROXY
RUN echo $HTTP_PROXY
EXPOSE  8080
CMD ["env"]



