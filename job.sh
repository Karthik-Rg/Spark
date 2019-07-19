
curl -X POST http://localhost:6066/v1/submissions/create --header "Content-Type:application/json;charset=UTF-8" --data '{
  "action" : "CreateSubmissionRequest",
  "appArgs" : [ "file:/opt/Test.txt", "/opt/output/wordcount_output" ],
  "appResource" : "file:/opt/final-0.0.1-SNAPSHOT.jar",
  "clientSparkVersion" : "2.2.1",
  "environmentVariables" : {
    "SPARK_ENV_LOADED" : "1"
  },
  "mainClass" : "f.spark.Fspark",
  "sparkProperties" : {
    "spark.jars" : "file:/opt/final-0.0.1-SNAPSHOT.jar",
    "spark.driver.supervise" : "false",
    "spark.app.name" : "MyJob",
    "spark.eventLog.enabled": "true",
    "spark.submit.deployMode" : "cluster",
    "spark.master" : "spark://localhost:6066"
  }
}'

