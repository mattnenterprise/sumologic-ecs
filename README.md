# SumoLogic ECS
This is meant to add the capability to the original SumoLogic collector to 
get SumoLogic configuration from S3 on startup. This should allow easily 
running the SumoLogic collector in ECS without baking the configuration into the container.

This container can still be used exactly how the original collector works with a few additions.

Environment Variables
| Variable Name                 | Meaning                                                                                     |
| ----------------------------- | ------------------------------------------------------------------------------------------- |
| SUMO_GENERATE_USER_PROPERTIES | This should be set to false when getting the user properties file from S3. Otherwise the original collector will try to generate it overridding the downloaded file. | 
| S3_USER_PROPERTIES_FILE       | This is the S3 path to the user properties file.                                            |
| SUMO_COLLECTOR_NAME           | This will replace the "{collector_name}" string in the user properties file with this value.|
| S3_SUMO_SOURCES_FILE          | This is the S3 path to the sumo sources file.                                               |

