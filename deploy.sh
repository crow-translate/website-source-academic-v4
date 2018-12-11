#!/bin/bash

commit_message="Rebuild"

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the website
hugo

# Commit and push changes to the compiled website submodule
cd public
git checkout master
git add .
if [ $# -eq 1 ]
  then commit_message="$1"
fi
git commit -m "$commit_message"
git push

# Commit and push changes to the website source
cd ..
git add .
git commit -m "$commit_message"
