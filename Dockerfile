FROM tomcat:9.0.14-jre8-alpine

LABEL maintainer="github.com/asecuritypreneur"

RUN rm -rf /usr/local/tomcat/webapps/ROOT/*

COPY webapps/ /usr/local/tomcat/webapps/ROOT/

RUN ln -sf /bin/bash /bin/sh

EXPOSE 8080

CMD ["catalina.sh", "run"]
