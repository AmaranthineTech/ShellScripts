#! /bin/zsh

echo "Running script to create folders."

cd ~/

echo "Creating folders: Tools, Reports, Help"
mkdir Tools
mkdir Reports
mkdir Help

echo "Creating hidden file for Tools folder."
cd Tools
touch .ToolsFolderCreated
cd ..

echo "Creating hidden file for Reports folder."
cd Reports
touch .ReportsFolderCreated
cd ..

echo "Creating hidden file for Help folder."
cd Help
touch .HelpFolderCreated
cd ..

echo "Task completed. Have a nice day!"