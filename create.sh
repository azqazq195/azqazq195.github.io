#!/bin/bash

# Get current date and time
DATE=$(date +"%Y-%m-%d")
TIME=$(date +"%Y-%m-%d %H:%M:%S +0900")

# Prompt for post title
echo "제목을 입력하세요:"
read TITLE

# Replace spaces in the title with dashes
TITLE_NO_SPACES=$(echo $TITLE | tr ' ' '-')

# Construct the file path
FILEPATH="./_posts/${DATE}-${TITLE_NO_SPACES}.md"

# Create the post with the YAML front matter
cat << EOF > $FILEPATH
---
title: $TITLE
author: moseoh
date: $TIME
---
EOF
