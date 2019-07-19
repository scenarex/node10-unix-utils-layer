FROM lambci/lambda:build-nodejs10.x

RUN mkdir /opt/zip
RUN cp /usr/bin/zip /opt/zip
RUN cp /usr/lib64/libbz2.so.1 /opt/zip
