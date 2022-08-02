#!/bin/bash

if [[ $VERCEL_GIT_COMMIT_REF == "stage"  ]] ; then 
  echo "Release stage"
  git config --global user.email "github@eskolare.com.br"
  git config --global user.name "eskobot"
  yarn run release:stage && yarn run build

else
  yarn run build
fi