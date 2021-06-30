#!/bin/zsh

echo "$(date) Running script $0 to create folders."

TOOLS_FOLDER="Tools"
REPORTS_FOLDER="Reports"
HELP_FOLDER="Help"

if [[ $1 != "" ]]; then
	TOOLS_FOLDER=$1
fi

if [[ $2 != "" ]]; then
	REPORTS_FOLDER=$2
fi

if [[ $3 != "" ]]; then
	HELP_FOLDER=$3
fi

TOOLS_FOLDER_CREATED=".$TOOLS_FOLDER-FolderCreated"
REPORTS_FOLDER_CREATED=".$REPORTS_FOLDER-FolderCreated"
HELP_FOLDER_CREATED=".$HELP_FOLDER-FolderCreated"

TODAY=$(date)
PATH_TO_LOG="$HOME/Library/Logs/folderCreator_log_v1-1.log"

echo "$(date) Starting" >> $PATH_TO_LOG

cd $HOME

echo "$(date) Creating folders: $TOOLS_FOLDER, $REPORTS_FOLDER, $HELP_FOLDER" >> $PATH_TO_LOG
if [[ -d $TOOLS_FOLDER ]]; then
	echo "$(date) Not creating $TOOLS_FOLDER as it already exists." >> $PATH_TO_LOG
else
	echo "$(date) Creating $TOOLS_FOLDER" >> $PATH_TO_LOG
	mkdir $TOOLS_FOLDER
fi

if [[ -d $REPORTS_FOLDER ]]; then
	echo "$(date) Not creating $REPORTS_FOLDER as it already exists." >> $PATH_TO_LOG
else
	echo "$(date) Creating $REPORTS_FOLDER" >> $PATH_TO_LOG
	mkdir $REPORTS_FOLDER
fi

if [[ -d $HELP_FOLDER ]]; then
	echo "$(date) Not creating $HELP_FOLDER as it already exists." >> $PATH_TO_LOG
else
	echo "$(date) Creating $HELP_FOLDER" >> $PATH_TO_LOG
	mkdir $HELP_FOLDER
fi

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
