#!/bin/bash
export ZK_DIR=/tmp/zookeeper
mkdir -p $ZK_DIR
export FILE=$ZK_DIR/myid
if [ ! -f "$FILE" ]; 
then 
  echo "KAFKA_SERVICE: Overriding zookeeper's myid"
  echo $zk_id >> $FILE
fi