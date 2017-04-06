#!/bin/bash
cd ~
wget http://d3kbcqa49mib13.cloudfront.net/spark-2.1.0-bin-hadoop2.7.tgz
tar -xvf spark-2.1.0-bin-hadoop2.7.tgz
rm spark-2.1.0-bin-hadoop2.7.tgz

echo "# Setting up shortcuts for Spark" >> ~/.bash_profile
echo "export SPARK_PATH=~/spark-2.1.0-bin-hadoop2.7" >> ~/.bash_profile
echo "alias pyspark=\"$SPARK_PATH/bin/pyspark --master local[4]\"" >> ~/.bash_profile
echo "alias snotebook=\"PYSPARK_DRIVER_PYTHON='jupyter' PYSPARK_DRIVER_PYTHON_OPTS='notebook' pyspark\"" >> ~/.bash_profile
echo "alias sparkR=\"$SPARK_PATH/bin/sparkR --master local[4]\"" >> ~/.bash_profile
