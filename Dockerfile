FROM centos:7
MAINTAINER Andrew_Mironenko <a.mironenko66@gmail.com>


COPY vm1.sh /
COPY formathdfs.sh /
COPY starthadoop.sh /

COPY env/hadoop-env.sh /tmp/
COPY env/core-site.xml /tmp/
COPY env/hdfs-site.xml /tmp/
COPY env/yarn-site.xml /tmp/
COPY env/hh.sh /tmp/
COPY env/addhosts /tmp/

RUN /vm1.sh
RUN /formathdfs.sh

EXPOSE 9870
EXPOSE 8088

ENTRYPOINT ["/starthadoop.sh","start"]


