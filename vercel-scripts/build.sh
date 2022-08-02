#!/bin/bash

if [[ $VERCEL_GIT_COMMIT_REF == "stage"  ]] ; then 
  echo "Release stage"
  yarn run release:stage && yarn run build

else
  yarn run build
fi