docker exec -i hdp-single-node bash << EOF
set -x -e

cd \$HADOOP_HOME/bin
hdfs dfs -ls
hdfs dfs -test -d /user/hduser/input && hdfs dfs -rm -r /user/hduser/input
hdfs dfs -test -d /user/hduser/output && hdfs dfs -rm -r /user/hduser/output


hdfs dfs -mkdir -p /user/hduser/input
hdfs dfs -put \$HADOOP_HOME/etc/hadoop/*.xml input
hadoop jar \$HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-3.3.*.jar grep input output 'dfs[a-z.]+'
hdfs dfs -cat output/part-r-00000
EOF