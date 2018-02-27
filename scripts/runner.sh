#!/bin/bash

if [[ -v S3_USER_PROPERTIES_FILE ]]; then
    aws s3 cp s3://${S3_USER_PROPERTIES_FILE} /opt/SumoCollector/config/user.properties
    
    if [[ -v SUMO_COLLECTOR_NAME ]]; then
        sed -i'' "s/{collector_name}/${SUMO_COLLECTOR_NAME}/g" /opt/SumoCollector/config/user.properties
    fi
fi

if [[ -v S3_SUMO_SOURCES_FILE ]]; then
    aws s3 cp s3://${S3_SUMO_SOURCES_FILE} /etc/sumo-sources.json
fi

bash /run.sh