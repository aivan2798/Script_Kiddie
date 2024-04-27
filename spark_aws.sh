#!/bin/bash
printf "\033[1;33m\tHELLO WORLD, NETEGEKA INSTALLINGA SPARK WITH AWS SUPPORT MU COLAB"
printf "\nsetup with access key id $1 and secret key $2"
WRK_DIR=$(pwd)
NAME="min"
echo ""
echo "Files zo will be saved to directory: $WRK_DIR"
echo "\033[0;32mNtandisse Installinga tar, Lindako Katono....."
$(sudo apt install tar -qq > /dev/null)

echo "\033[0;31mKati ndi muku installinga java 8......\033[0m"
apt-get install openjdk-8-jdk-headless -qq > /dev/null

echo "\033[0;35mTutusse installinga spark with aws support ......"
wget https://dlcdn.apache.org/spark/spark-3.5.1/spark-3.5.1-bin-hadoop3.tgz -q
tar xf spark-3.5.1-bin-hadoop3.tgz > /dev/null
rm spark-3.5.1-bin-hadoop3.tgz

echo "\033[1;33m\tINSTALLS ZIIWEDE, Lindako I set them up bulungi..."
spark_dir="$WRK_DIR/spark-3.5.1-bin-hadoop3"
spark_jars_dir="$spark_dir/jars"

#echo $spark_jars_dir
wget -q https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.12.99/aws-java-sdk-bundle-1.12.99.jar
mv aws-java-sdk-bundle-1.12.99.jar $spark_jars_dir


wget -q https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.3.4/hadoop-aws-3.3.4.jar
mv hadoop-aws-3.3.4.jar $spark_jars_dir

wget -q https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk/1.12.707/aws-java-sdk-1.12.707.jar
mv aws-java-sdk-1.12.707.jar $spark_jars_dir

echo "SPARK_HOME=$spark_dir\nJAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64\nAWS_ACCESS_KEY_ID=$1\nAWS_SECRET_ACCESS_KEY=$2">>.env
pip install python-dotenv >> /dev/null
printf "\033[1;33m\n\tMERVEILLEUX, BULIKIMU KIWEDDE,\n\t\t...GOOD LUCK"

echo "\033[0m\n\nPlease Copy the code below into your jupyter or colab to finish setup:\n\n\nfrom dotenv import load_dotenv\nload_dotenv()"
