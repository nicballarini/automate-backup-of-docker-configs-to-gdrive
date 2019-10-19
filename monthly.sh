#!/bin/bash

#Define vars
PATH_TO_DOCKER_CONFIGS=[INPUT_YOUR_DOCKER_CONFIGS_PATH]
DOCKER_MONTHLY_BACKUP_FILENAME=docker2.$(date +%Y-%m).tar.bz2
PARENT_ID_MONTHLY_FOLDER=[INPUT_FOLDER_ID_FROM_GDRIVE]

#zip the given dir using and saving using generated filename
tar -cvjf /backup/monthly/$DOCKER_MONTHLY_BACKUP_FILENAME /$PATH_TO_DOCKER_CONFIGS/

#sync that file to gdrive to referenced parent dir
gdrive upload --parent $PARENT_ID_MONTHLY_FOLDER /backup/monthly/$DOCKER_MONTHLY_BACKUP_FILENAME

#-placeholder for successful upload check-
# remove the monthly zip after upload
rm -rf /backup/monthly/$DOCKER_MONTHLY_BACKUP_FILENAME
