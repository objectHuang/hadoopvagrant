#!/bin/bash

source "/vagrant/scripts/common.sh"

function copyTez {
	echo "copy Tez to HDFS"
	hdfs dfs -mkdir /tez
	hdfs dfs -mkdir /tmp
	hdfs dfs -put -f /usr/local/tez /tez
	hdfs dfs -chmod -R 755 /tez
	hdfs dfs -chmod -R 755 /tmp
	#echo "Copy Tez configuration"
	#cp -f $TEZ_RES_DIR/mapred-site.xml /usr/local/hadoop/etc/hadoop/.
	#cp -f $TEZ_RES_DIR/tez-site.xml /usr/local/tez/conf/.
	hdfs dfs -put  -f ${HIVE_EXEC_JAR}  /tez/tez/.
}



echo "copy Tez to Hadoop"

copyTez

echo "Copy Tez complete"
