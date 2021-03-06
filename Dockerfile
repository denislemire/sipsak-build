FROM centos:7
MAINTAINER Denis Lemire <denis.lemire@distributel.ca
USER root
RUN yum groupinstall -y 'Development Tools'
COPY sipsak.spec /sipsak.spec
COPY build.sh /build.sh
ENTRYPOINT ["/build.sh"]
