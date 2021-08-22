#!/bin/bash

#java
JAVA_ARCHIVE=jdk-8u45-linux-x64.tar.gz

#hadoop
HADOOP_HOME=/usr/local/hadoop
HADOOP_CONF=$HADOOP_HOME/etc/hadoop
HADOOP_VERSION=hadoop-3.2.2
HADOOP_ARCHIVE=$HADOOP_VERSION.tar.gz
HADOOP_MIRROR_DOWNLOAD=https://ftp.cixug.es/apache/hadoop/common/hadoop-3.2.2/hadoop-3.2.2.tar.gz
HADOOP_RES_DIR=/vagrant/resources/hadoop

#spark
SPARK_VERSION=spark-3.1.2
SPARK_ARCHIVE=$SPARK_VERSION-bin-hadoop3.2.tgz 
SPARK_DIR=$SPARK_VERSION-bin-hadoop3.2
SPARK_MIRROR_DOWNLOAD=https://ftp.cixug.es/apache/spark/spark-3.1.2/spark-3.1.2-bin-hadoop3.2.tgz
SPARK_RES_DIR=/vagrant/resources/spark
SPARK_CONF_DIR=/usr/local/spark/conf

# Tez
TEZ_RELEASE=apache-tez-0.9.2-bin
TEZ_ARCHIVE=${TEZ_RELEASE}.tar.gz
TEZ_MIRROR_DOWNLOAD=https://downloads.apache.org/tez/0.9.2/apache-tez-0.9.2-bin.tar.gz
TEZ_RES_DIR=/vagrant/resources/tez

# sqoop v
SQOOP_RELEASE=sqoop-1.4.7.bin__hadoop-2.6.0
SQOOP_ARCHIVE=${SQOOP_RELEASE}.tar.gz
SQOOP_MIRROR_DOWNLOAD=http://archive.apache.org/dist/sqoop/1.4.7/sqoop-1.4.7.bin__hadoop-2.6.0.tar.gz
SQOOP_RES_DIR=/vagrant/resources/sqoop

#HIVE
HIVE_VERSION=apache-hive-3.1.2-bin
HIVE_ARCHIVE=$HIVE_VERSION.tar.gz
HIVE_MIRROR_DOWNLOAD=https://ftp.cixug.es/apache/hive/hive-3.1.2/apache-hive-3.1.2-bin.tar.gz
HIVE_RES_DIR=/vagrant/resources/hive
HIVE_CONF_DIR=/usr/local/hive/conf

#ssh
SSH_RES_DIR=/vagrant/resources/ssh
RES_SSH_CONFIG=$SSH_RES_DIR/config

function resourceExists {
	FILE=/vagrant/resources/$1
	if [ -e $FILE ]
	then
		return 0
	else
		return 1
	fi
}

function fileExists {
	FILE=$1
	if [ -e $FILE ]
	then
		return 0
	else
		return 1
	fi
}

#echo "common loaded"
