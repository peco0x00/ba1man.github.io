#! /usr/bin/env bash

if [ $# -eq 0 ]; then
  echo "usage: bootstrap.sh <title-of-your-article-with-this-style>"
  exit 1
fi

title="$1"
file_date="$(date '+%Y-%m-%d')"
article_date="$(date '+%Y-%m-%d %H:%M:%S %z')"
file="./_posts/$file_date-$title.md"

cat << EOF > "$file"
---
layout: post
title:  TITLE
date:   $article_date
categories: 
---
EOF
