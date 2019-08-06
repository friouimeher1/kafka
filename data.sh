#!/bin/sh
#Step 3 – Start Kafka Server

cd /usr/local/kafka
bin/zookeeper-server-start.sh config/zookeeper.properties
#Now start the Kafka server:
bin/kafka-server-start.sh config/server.properties
#Step 4 – Create a Topic in Kafka
bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic testTopic
#Now you can see the created topic on Kafka by runnin gthe list topic command
bin/kafka-topics.sh --list --zookeeper localhost:2181
#Step 5 – Send Messages to Kafka
bin/kafka-console-producer.sh --broker-list localhost:9092 --topic testTopic
#> hello meher frioui
#Step 6 – Using Kafka Consumer
#Kafka also has a command line consumer to read data from Kafka cluster and display messages to standard output.
bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic testTopic --from-beginning
https://tecadmin.net/install-apache-kafka-ubuntu/
