# Script_Kiddie
A list of hack scripts to use

# spark_aws.sh:<br/>
#### <i>Use this script to install pyspark to your jupyter linux environment or colab environment.<br/>In your linux jupyter or colab use: <br/>
!wget https://raw.githubusercontent.com/aivan2798/Script_Kiddie/main/spark_aws.sh<br/>
!sh spark_aws.sh YOUR_AWS_KEY_ID YOUR_AWS_SECRET_KEY<br/>
from dotenv import load_dotenv<br/>
load_dotenv()<br/>
</i>
##### NB: Don't forget to replace YOUR_AWS_KEY_ID and YOUR_AWS_SECRET_KEY with your actual <b> AWS KEY VALUE and AWS secret key respectively</b>
#### To start the spark session for digital ocean:<br/><br/>
from pyspark.sql import SparkSession<br/>

aws_endpoint = "nyc3.digitaloceanspaces.com"<br/>
spark = SparkSession \\<br/>
    .builder \\<br/>
    .appName("pyspark test") \\<br/>
    .config("spark.pyspark.python", "python") \\<br/>
    .config("fs.s3a.endpoint", aws_endpoint)\\<br/>
    .getOrCreate()<br/><br/>


##### For aws:<br/>
from pyspark.sql import SparkSession<br/>

spark = SparkSession \\<br/>
    .builder\\<br/>
    .appName("pyspark test")\\<br/>
    .config("spark.pyspark.python", "python") \\<br/>
    .getOrCreate()<br/>
