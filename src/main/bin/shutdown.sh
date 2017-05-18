procnum=`ps -ef | grep java | grep 包名.jar | awk '{print $2}'`;

`kill -9 $procnum`;

echo "Kill the 包名.jar! process numer is  $procnum";
