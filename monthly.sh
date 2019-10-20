#!/bin/bash

#grab variables from config.sh
source config.sh

#zip the given dir using and saving using generated filename
tar -cvjf /backup/monthly/$DOCKER_MONTHLY_BACKUP_FILENAME $PATH_TO_DOCKER_CONFIGS/

#sync that file to gdrive to referenced parent dir
gdrive upload --parent $PARENT_ID_MONTHLY_FOLDER /backup/monthly/$DOCKER_MONTHLY_BACKUP_FILENAME

#-placeholder for successful upload check-
# remove the monthly zip after upload
rm -rf /backup/monthly/$DOCKER_MONTHLY_BACKUP_FILENAME
