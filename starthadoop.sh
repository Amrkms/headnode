#!/bin/bash
sleep 5
/usr/local/hadoop/current/bin/hdfs --daemon start namenode  && echo OK hdfs > /tmp/hdfs.txt
/usr/local/hadoop/current/bin/yarn --daemon start resourcemanager && echo OK yarn > /tmp/yarn.txt
while true ; do sleep 1000 ; done








