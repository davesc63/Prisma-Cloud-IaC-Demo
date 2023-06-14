#!/bin/bash
#to be run from the Prisma Cloud IaC Demo directory

directory="/Users/dmcgovern/git/Prisma-Cloud-IaC-Demo"

#Check if current working directory is the expected directory
if [ "$(pwd)" != "$directory" ]; then
echo "Incorrect directory. Please navigate to $directory."

echo -e "\n====== Changing to /Users/dmcgovern/git/Prisma-Cloud-IaC-Demo/ =======\n"
cd "/Users/dmcgovern/git/Prisma-Cloud-IaC-Demo/"

echo -e "\n====== Current Directory is: =======\n"
pwd
#exit 1
fi

echo -e "\n====== Refreshing GitHub Repo =======\n"

echo -e "\n====== Delete GitHub Workflow Runs ======\n"
python3 "/Users/dmcgovern/git/mac-scripts/clear-github-workflows.py"


echo -e "\n======  Delete .git folder ======\n"
rm -rf "/Users/dmcgovern/git/Prisma-Cloud-IaC-Demo/.git"

echo -e "\n====== git global config default branch as: main ======\n"
git config --global init.defaultBranch main

echo -e "\n====== git init ======\n"
git init

echo -e "\n====== git add ======\n"
git add .
git add --force ./.github

echo -e "\n====== git commit ======\n"
git commit -m "repo setup"

echo -e "\n====== git remote add ======\n"
git remote add origin https://github.com/davesc63/Prisma-Cloud-IaC-Demo.git

echo -e "\n====== git push ======\n"
git push -u --force origin main