!/bin/bash
cd ~
wget https://d3kbcqa49mib13.cloudfront.net/spark-2.1.1-bin-hadoop2.7.tgz
tar -xvf spark-2.1.1-bin-hadoop2.7.tgz
rm spark-2.1.1-bin-hadoop2.7.tgz

echo "# Setting up shortcuts for Spark" >> ~/.bash_profile
echo "export SPARK_PATH=~/spark-2.1.1-bin-hadoop2.7" >> ~/.bash_profile
echo "alias pyspark=\"~/spark-2.1.1-bin-hadoop2.7/bin/pyspark --master local[4]\"" >> ~/.bash_profile
echo "alias snotebook=\"PYSPARK_DRIVER_PYTHON='jupyter' PYSPARK_DRIVER_PYTHON_OPTS='notebook' pyspark\"" >> ~/.bash_profile
echo "alias sparkR=\"~/spark-2.1.1-bin-hadoop2.7/bin/sparkR --master local[4]\"" >> ~/.bash_profile
