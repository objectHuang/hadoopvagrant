#!/bin/bash
# http://stackoverflow.com/questions/6348902/how-can-i-add-numbers-in-a-bash-script
source "/vagrant/scripts/common.sh"
START=3
TOTAL_NODES=2

while getopts s:t: option
do
	case "${option}"
	in
		s) START=${OPTARG};;
		t) TOTAL_NODES=${OPTARG};;
	esac
done

function setupSlaves {
	echo "modifying spark slaves"
	for i in $(seq $START $TOTAL_NODES)
	do 
		entry="node${i}"
		echo "adding ${entry}"
		echo "${entry}" >> $SPARK_CONF_DIR/slaves
	done
}

echo "############## Setting-up Spark slaves"
setupSlaves
