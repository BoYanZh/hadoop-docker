hdfs dfs -rm grades.csv; hdfs dfs -rm -r output; ./generate.py 100000 && hdfs dfs -put grades.csv
time hadoop jar $HADOOP_HOME/hadoop-streaming-3.2.2.jar -files mapper,reducer -mapper mapper -reducer reducer -input grades.csv -output output
