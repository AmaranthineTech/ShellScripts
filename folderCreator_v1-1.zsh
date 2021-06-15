#!/bin/zsh

echo "$(date) Running script $0 to create folders."

TOOLS_FOLDER=$1
REPORTS_FOLDER=$2
HELP_FOLDER=$3

TOOLS_FOLDER_CREATED=".$TOOLS_FOLDER-FolderCreated"
REPORTS_FOLDER_CREATED=".$REPORTS_FOLDER-FolderCreated"
HELP_FOLDER_CREATED=".$HELP_FOLDER-FolderCreated"

TODAY=$(date)
PATH_TO_LOG="$HOME/Library/Logs/folderCreator_log_v1-1.log"

echo "$(date) Starting" >> $PATH_TO_LOG

cd $HOME

echo "$(date) Creating folders: $TOOLS_FOLDER, $REPORTS_FOLDER, $HELP_FOLDER" >> $PATH_TO_LOG
mkdir $TOOLS_FOLDER
mkdir $REPORTS_FOLDER
mkdir $HELP_FOLDER

echo "$(date) Creating hidden file for $TOOLS_FOLDER folder." >> $PATH_TO_LOG
cd $TOOLS_FOLDER
touch $TOOLS_FOLDER_CREATED
cd ..

echo "$(date) Creating hidden file for $REPORTS_FOLDER folder." >> $PATH_TO_LOG
cd $REPORTS_FOLDER
touch $REPORTS_FOLDER_CREATED
cd ..

echo "$(date) Creating hidden file for $HELP_FOLDER folder." >> $PATH_TO_LOG
cd $HELP_FOLDER
touch $HELP_FOLDER_CREATED
cd ..

echo "$(date) Task completed. Have a nice day!"
