#!/bin/bash
###########################################
# the number of messages to send
###########################################
message_count=100
###########################################
# the topic to send the messages to
###########################################
topic_name=myTopic
###########################################
# for loop in bash
###########################################
for (( c=0; c<$message_count; c++ ))
do
echo "message $c"
#gcloud pubsub topics publish $topic_name --message="Message number: $c" --ordering-key="key1" --attribute "origin=arch-itqa,username=gcp"
gcloud pubsub topics publish $topic_name --message="Message number: $c"
done