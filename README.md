# spark-local-setup

This repository provides a simple set of instructions to setup Spark (namely PySpark) locally in Jupyter notebook. 

## Downloading and Using Spark
1) The first step is to download Apache Spark. We go to <a href='http://spark.apache.org/downloads.html'>http://spark.apache.org/downloads.html</a> and download whichever version we want.

2) Next, we need to unzip the tarball by using `tar -xvf` followed by the tarball file name.

3) We can navigate inside the extracted folder and go to `bin/`. From here, we can find shells for Spark. We can run them by typing `./pyspark`.

## Setting up for Jupyter Notebook
The next step is to set this up to be used in a Jupyter notebook, because who wants to use a terminal for data science work?

4) We can do this by adding a few lines to our `.bash_profile` to configure PySpark to run in a notebook. By doing this, we can avoid all the headache of remembering specific options every time we want to run PySpark in a notebook.

We first export a variable called `SPARK_PATH`, where <i>path_to_spark_directory</i> is the path to the folder extracted from the tarball.
<pre>
export SPARK_PATH="<i>path_to_spark_directory</i>"
</pre>
Next, we can create an alias to start up PySpark in terminal.
```
alias pyspark="$SPARK_PATH/bin/pyspark --master local[4]"
```
The number inside of local indicates the number of cores on the local machine that is running PySpark. If the machine is dual core, specify 2 instead.

The last and most important step specifies how to tell Spark to run in a notebook.
```
alias snotebook="PYSPARK_DRIVER_PYTHON='jupyter' PYSPARK_DRIVER_PYTHON_OPTS='notebook' pyspark"
```

Now, we must restart the terminal or source the `.bash_profile` by executing `source ~/.bash_profile`. After doing this, we can simply run `snotebook` and our Jupyter notebook with Spark will be available. We can verify that the notebook is using Spark by running `sc` in a cell. If Spark is improperly setup, it will return `''`. Otherwise, it will show something like `<pyspark.context.SparkContext object at 0x1109f1d50>`.

