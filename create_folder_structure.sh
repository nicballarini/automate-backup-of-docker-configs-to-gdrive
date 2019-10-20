#!/bin/bash

#grab variables from config.sh
source config.sh

#Create local folder structure
mkdir /backup/
mkdir /backup/monthly
mkdir /backup/weekly
mkdir $PATH_TO_DOCKER_CONFIGS/scripts


#Create gdrive folder structure
GDRIVE_MAIN_FOLDER=$(gdrive mkdir backup | awk '{print $2}')
GDRIVE_WEEKLY_FOLDER=$(gdrive mkdir --parent $GDRIVE_MAIN_FOLDER weekly | awk '{print $2}')
GDRIVE_MONTHLY_FOLDER=$(gdrive mkdir --parent $GDRIVE_MAIN_FOLDER monthly | awk '{print $2}')

#write the vars back to config.sh for reference
sudo sed -i -e 's/GDRIVE_MAIN_FOLDER='/GDRIVE_MAIN_FOLDER=$GDRIVE_MAIN_FOLDER/ config.sh
sudo sed -i -e 's/GDRIVE_WEEKLY_FOLDER='/GDRIVE_WEEKLY_FOLDER=$GDRIVE_WEEKLY_FOLDER/ config.sh
sudo sed -i -e 's/GDRIVE_MONTHLY_FOLDER='/GDRIVE_MONTHLY_FOLDER=$GDRIVE_MONTHLY_FOLDER/ config.sh