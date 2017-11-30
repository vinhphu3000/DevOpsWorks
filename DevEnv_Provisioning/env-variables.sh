#!/bin/bash

ENV_VARIABLES_FILE=$DEVOPSWORKS_ROOT/variables.env.json
UTILITIES_HOME=$DEVOPSWORKS_ROOT/core/utilities

if [ $1 = "environment" ]
then
  echo $ENV_VARIABLES_FILE
else
  if [ $1 = "utilities" ]
  then
    echo $UTILITIES_HOME
  else
    echo $DEVOPSWORKS_ROOT$($UTILITIES_HOME/json.sh get $1 $ENV_VARIABLES_FILE)
  fi
fi