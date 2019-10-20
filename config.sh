#!/bin/bash

#Define your docker setup
#example: PATH_TO_DOCKER_CONFIGS=/data/docker.configs
PATH_TO_DOCKER_CONFIGS=/path/to/docker/configs





#gdrive-related PATH ID's 
#these will be populated from the create_folder_structure.sh
GDRIVE_MAIN_FOLDER=
GDRIVE_WEEKLY_FOLDER=
GDRIVE_MONTHLY_FOLDER=

#backup customizable settings
DOCKER_MONTHLY_BACKUP_FILENAME=docker2.$(date +%Y-%m).tar.bz2
