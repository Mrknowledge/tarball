#!/bin/sh

DIR="/home/hadoop/hdfs-over-ftp/"
JAVA_HOME="/usr/java/jdk1.6.0_24"
JAVA_OPTS="-server"
CLASS="org.apache.hadoop.contrib.ftp.HdfsOverFtpServer"
JAVA_CMD="$JAVA_HOME/jre/bin/java"
OUT_LOG="hdfs-over-ftp.out"
DATE=`date +%Y%m%d%H%M%S`
pid=${DIR}hdfs-over-ftp.pid

PROCESS=`ls ${DIR} | grep hdfs-over-ftp- |sort -r |awk 'NR==1{print $0}'`

command="hdfs-over-ftp"
usage="Usage: hdfs-over-ftp.sh (start|stop)"
#cmd=stop

cmd=$1

case $cmd in

  (start)

    if [ -f $pid ]; then
        echo $command running as process `cat $pid`. Stop it first.
        exit 1
    fi

    echo starting $command
      #$JAVA_CMD ${JAVA_OPTS} -cp .:lib/* ${CLASS} &> $OUT_LOG & echo $! > $pid
      #java -jar hdfs-over-ftp-1.0-jar-with-dependencies.jar &> $OUT_LOG & echo $! > $pid
      #java -jar hdfs-over-ftp-1.0-jar-with-dependencies.jar & echo $! > $pid
      $JAVA_CMD ${JAVA_OPTS} -jar ${PROCESS} & echo $! > $pid
    ;;

  (stop)

    if [ -f $pid ]; then
        echo stopping $command
        kill `cat $pid`
        rm $pid
      else
        echo no $command to stop
      fi
    ;;

  (*)
    echo $usage
    exit 1
    ;;

esac
