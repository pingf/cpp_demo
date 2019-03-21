FROM mergeforward/alpdev


WORKDIR /opt/hello-daocloud
ADD ./ /opt/hello-daocloud
RUN cmake ./
RUN make

ENTRYPOINT ["/opt/hello-daocloud/bin/hello-daocloud"]

