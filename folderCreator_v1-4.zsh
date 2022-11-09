#!/bin/zsh

#-------------------------------------------------------------------------------------------------
#NAME:		Folder creator
#AUTHOR:	Arun Patwardhan
#CONTACT:	arun@amaranthine.co.in
#DATE:		10th August 2021
#WEBSITE:	https://github.com/AmaranthineTech/ShellScripts
#-------------------------------------------------------------------------------------------------

#LEGAL DISCLAIMER --------------------------------------------------------------------------------
#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#SOFTWARE.
#-------------------------------------------------------------------------------------------------

#LICENSE/TERMS AND CONDITIONS --------------------------------------------------------------------
#MIT License

#Copyright (c) Amaranthine 2021.

#Permission is hereby granted, free of charge, to any person obtaining a copy
#of this software and associated documentation files (the "Software"), to deal
#in the Software without restriction, including without limitation the rights
#to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#copies of the Software, and to permit persons to whom the Software is
#furnished to do so, subject to the following conditions:

#The above copyright notice and this permission notice shall be included in all
#copies or substantial portions of the Software.
#-------------------------------------------------------------------------------------------------

#ABOUT -------------------------------------------------------------------------------------------
# fileCreator.zsh
# 1.4
#-------------------------------------------------------------------------------------------------

#DESCRIPTION ------------------------------------------------------------------------------------- 
# - THis script is intended for creating the custom folders that are required on all corporate computers. 
# - Run this script on a new computer or a computer being reassigned to another employee.
# - This script can run on all computers.
#-------------------------------------------------------------------------------------------------

#USAGE -------------------------------------------------------------------------------------------
# - To create folders with default names run the command: ./folderCreator.zsh
# - To define your own folder names: ./folderCreator.zsh <folder1> <folder2> <folder3>
# - Available options  : Only the help option is available
# - Getting help       : Use the -h or the -help options to get more information. Or you can use the man command to view the man page.
#-------------------------------------------------------------------------------------------------

#WARNING/CAUTION ---------------------------------------------------------------------------------
#******************************************************************************************************************
#******************************************************************************************************************
#******************************************************************************************************************
#******************************************************************************************************************
# This script doesn't perform any validation of the folder names being passed in by the user. 
# If the script does not see the -h or the -help options then it will assume that the data being passed in is the name of the folder.
# The user of the script must ensure that the desired folder names are passed in.
#******************************************************************************************************************
#******************************************************************************************************************
#******************************************************************************************************************
#******************************************************************************************************************
#-------------------------------------------------------------------------------------------------

#INSTALLATION ------------------------------------------------------------------------------------
# Instructions for placing the script in the correct place are listed here. 
# Location:		/Library/Scripts/
# Permissions:	rwx r-x r-x
#-------------------------------------------------------------------------------------------------

#REQUIREMENTS ------------------------------------------------------------------------------------
# Shell:		/bin/zsh
# OS:			macOS Big Sur 11.4 or later
# Dependencies:	None
#-------------------------------------------------------------------------------------------------

#HELP/SUPPORT ------------------------------------------------------------------------------------
# You can get help by running the following commands.
# ./folderCreator.zsh -h
# ./folderCreator.zsh -help
# OR
# man folderCreator.zsh
# You can also view the log file for the same at: ~/Library/Logs/folderCreator_log_v1-4.log
#-------------------------------------------------------------------------------------------------

#HISTORY -----------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------------
# Version 1.0: Basic script which creates the folders
# Version 1.1: Gives user the ability to specify the folder names at run time.
# Version 1.2: Adds safety checks to the scripts
# Version 1.3: Includes documentation as well as ability to get help.
# Version 1.4: Includes optimisation using for loop
#-------------------------------------------------------------------------------------------------

#-------------------------------------------------------------------------------------------------
# ------------------------------ SCRIPT STARTS HERE ----------------------------------------------
#-------------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------------

#These are the default values used for the folder names incase the user doesn't provide any.
TOOLS_FOLDER="Tools"
REPORTS_FOLDER="Reports"
HELP_FOLDER="Help"

#Script version number
VERSION_NUMBER="1.4"

#Command name
COMMAND_NAME="folderCreator.zsh"

#1. Check to see if the user is asking for help. In which case we will have to provide information about the command.
if [[ $1 == "-h" ]] || [[ $1 == "-help" ]]; then
	echo "ABOUT 
-----
fileCreator_v1-4.zsh
Version $VERSION_NUMBER

NAME 
----
$COMMAND_NAME — Folder creation utility SYNOPSIS
$COMMAND_NAME folder names [ verbs ]

DESCRIPTION 
-----------
$COMMAND_NAME creates 3 folders in the home folder. In case the folder names are not provided then the command will create folders with default names 'Tools', 'Reports', \"Help\".

There is also the option of getting help via the help verb.
- This script is intended for creating the custom folders that are required on all corporate computers. 
- Run this script on a new computer or a computer being reassigned to another employee.
- This script can run on all computers.

VERBS 
-----
[ −h −help] Both the options are used to invoke the help documentation.
[ −v −version] Both the options are used to get the version number of the folderCreator command.

REQUIREMENTS 
------------
The following are the minimum requirements to get the script running.
Shell:\t\t zsh
OS:\t\t macOS Big Sur 11.4 or later
Dependencies:\t None

INSTALLATION 
------------
$COMMAND_NAME can be installed anywhere you wish. However, there are certain locations that are recommended.
Location:\t /Library/Scripts/ 
Permissions: \t rwxr-xr-x

USAGE  
-----
$COMMAND_NAME folder1 folder2 folder3 
Will create folders with your own names. 

$COMMAND_NAME -h OR $COMMAND_NAME -help 
Will invoke the help utility.

$COMMAND_NAME -v OR $COMMAND_NAME -version 
will print the version number in stdout.

WARNING/CAUTION  
---------------
$COMMAND_NAME does not perform any validation of names. The only options that folderCreator accepts are -h and -help verbs or the -v and -version verbs. If the script does not see the -h , -help or the -v , -version options then it will assume that the data being passed in is the name of the folder. The user of the folderCreator command must ensure that the desired folder names are passed in.

EXAMPLES 
--------
$COMMAND_NAME Resources Results Assistant
This will create 3 folders Resources , Results , Assistant , in the user’s home folder. 

$COMMAND_NAME
This will create 3 folders with the default names

$COMMAND_NAME Apps
This will use the Apps name for the first folder but the default names for the last 2 folders. 

DIAGNOSTICS 
-----------
The script produces a log file called ~/Library/Logs/folderCreator_log_v1-x.log
This file is typically located in the user’s home folder log folder. The x represents the version number of $COMMAND_NAME
You can view the logs for each respective version.

COPYRIGHT  
---------
Copyright (c) Amaranthine 2015-2021. All rights reserved. https://amaranthine.in

EXIT STATUS  
-----------
In most situations, $COMMAND_NAME exits 0 on success"
	exit 0
fi

echo "$(date) Running script $0 to create folders."
echo ""

#2. Check to see if the version number is 
if [[ $1 == "-version" ]] || [[ $1 == "-v" ]]; then
	echo "Version: $VERSION_NUMBER"
	exit 0
fi

#3. The following if statements check to see if the script is receiving any arguments. It then picks those arguments and assigns them to the respective variables for use in the script.
if [[ $1 != "" ]]; then
	TOOLS_FOLDER=$1
fi

if [[ $2 != "" ]]; then
	REPORTS_FOLDER=$2
fi

if [[ $3 != "" ]]; then
	HELP_FOLDER=$3
fi

TODAY=$(date)
PATH_TO_LOG="$HOME/Library/Logs/folderCreator_log_v1-4.log"

echo "$(date) Starting" >> $PATH_TO_LOG

#4. Go to the home folder.
cd $HOME

#5. Check to see if each of the folders exists. If it exists then do not create it. Else create the folder. 
echo "$(date) Creating folders: $TOOLS_FOLDER, $REPORTS_FOLDER, $HELP_FOLDER" >> $PATH_TO_LOG

for item in $TOOLS_FOLDER $REPORTS_FOLDER $HELP_FOLDER; do
	if [[ -d $item ]]; then
		echo "$(date) Not creating $item as it already exists." >> $PATH_TO_LOG
	else
		echo "$(date) Creating $item" >> $PATH_TO_LOG
		mkdir $item
	fi
	
	#6. Create the task completion file inside each folder.
	echo "$(date) Creating hidden file for $item folder." >> $PATH_TO_LOG
	cd $item
	#7. Generate the file names based on the folder names.
	touch ".$item-FolderCreated"
	cd ..
done

echo "$(date) Task completed. Have a nice day!"
	
#-------------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------------
# ------------------------------ END OF SCRIPT ---------------------------------------------------