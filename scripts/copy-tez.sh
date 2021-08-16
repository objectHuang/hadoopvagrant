#!/bin/bash

source "/vagrant/scripts/common.sh"

f

function copyTez {
	echo "copy Tez to HDFS"
	hdfs dfs -mkdir /tez
	hdfs dfs -put -f /usr/local/tez /tez
	#echo "Copy Tez configuration"
	#cp -f $TEZ_RES_DIR/mapred-site.xml /usr/local/hadoop/etc/hadoop/.
	#cp -f $TEZ_RES_DIR/tez-site.xml /usr/local/tez/conf/.
	#hdfs dfs -put  -f ${HIVE_EXEC_JAR}  /user/tez/.
}



echo "copy Tez to Hadoop"

copyTez

echo "Copy Tez complete"
