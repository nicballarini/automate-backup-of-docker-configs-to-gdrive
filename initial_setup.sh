#!/bin/bash

#latest linux64 version of gdrive




#download gdrive from google
wget -O gdrive https://docs.google.com/uc?id=0B3X9GlR6EmbnQ0FtZmJJUXEyRTA&export=download

#make gdrive executable
chmod +x gdrive

#in order to link gdrive to your account, you'll log in as root and run 'gdrive about'. Go to the link Provided and paste it in the console.
sudo su
gdrive about