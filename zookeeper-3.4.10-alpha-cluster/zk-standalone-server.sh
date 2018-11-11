#!/bin/bash


# zookeeper 集群的根目录
ZOOKEEPER_CLUSTER_HOME=$(cd `dirname $0`; pwd)
ZOOKEEPER_HOME=${ZOOKEEPER_CLUSTER_HOME}/zookeeper-3.4.10

if [ $1 = start ]; then
	echo "启动单机 zookeeper-cluster ------------ "
	nohup ${ZOOKEEPER_HOME}/bin/zkServer.sh $1 ${ZOOKEEPER_CLUSTER_HOME}/zk_config/zoo_standalone.cfg

elif [ $1 = stop ]; then
	echo "关闭单机 zookeeper-cluster ------------ "
	nohup ${ZOOKEEPER_HOME}/bin/zkServer.sh $1 ${ZOOKEEPER_CLUSTER_HOME}/zk_config/zoo_standalone.cfg

elif [ $1 = status ]; then
	echo "查看单机状态 --------------------------  "
	nohup ${ZOOKEEPER_HOME}/bin/zkServer.sh $1 ${ZOOKEEPER_CLUSTER_HOME}/zk_config/zoo_standalone.cfg

else
	echo ">>>>>>>>>>  command is not [start|stop|status]  <<<<<<<<<<< "
fi	

echo ">>>>>>>>>> [start|stop|status] 日志在当前目录 nohup.out 文件  "

