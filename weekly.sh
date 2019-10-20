#!/bin/bash

#Define vars
PATH_TO_DOCKER_CONFIGS=/[INPUT_YOUR_DOCKER_CONFIGS_PATH]
PARENT_ID_WEEKLY_FOLDER=[INPUT_FOLDER_ID_FROM_GDRIVE]

#I'm backing up each docker container group separately to make restoring more granular. If I screw up a small piece, there's no reason to restore the entire lot.
#
#
#Here's a template to create any additional tars
#tar -cvjf /backup/weekly/[HOSTNAME].[DOCKER_CONFIG_GROUP_FOLDER].tar.bz2 /$PATH_TO_DOCKER_CONFIGS/[DOCKER_CONFIG_GROUP_FOLDER]


#scripts
tar -cvjf /backup/weekly/docker2.scripts.tar.bz2 $PATH_TO_DOCKER_CONFIGS/scripts

#homeautomation
tar -cvjf /backup/weekly/docker2.homeautomation.tar.bz2 $PATH_TO_DOCKER_CONFIGS/homeautomation

#utils
tar -cvjf /backup/weekly/docker2.utils.tar.bz2 $PATH_TO_DOCKER_CONFIGS/utils

#plexland
tar -cvjf /backup/weekly/docker2.plexland.tar.bz2 $PATH_TO_DOCKER_CONFIGS/plexland

#used to sync zips to gdrive
gdrive sync upload /backup/weekly/ $PARENT_ID_WEEKLY_FOLDER