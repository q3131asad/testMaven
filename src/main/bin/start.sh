#!/bin/bash

#jar包名称
jarName="包名.jar"

pid=`ps -ef| grep $jarName |grep -v grep |awk '{print $2}'`

if [ -z $pid ]
then
#        java -jar $jarName > /dev/null &

        mv  logs/teail.log logs/teail`date +%Y-%m-%d_%H:%M:%s`.log
	
        nohup java -jar $jarName > logs/teail.log&

        echo "$jarName, has been start!!! "

else
        kill -9 $pid

        echo "$jarName, has been stop!!! "

        mv  logs/teail.log logs/teail`date +%Y-%m-%d_%H:%M:%s`.log

        nohup java -jar $jarName > logs/teail.log&

	echo "$jarName, has been restart!!! "
fi