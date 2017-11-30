#!/bin/bash

ENV_VARIABLES_FILE=$($DEVOPSWORKS_ROOT/env-variables.sh environment)
UTILITIES_HOME=$($DEVOPSWORKS_ROOT/env-variables.sh utilities)

LOGGING=$($UTILITIES_HOME/json.sh get LOGGING $ENV_VARIABLES_FILE)
LOG_FILE=$($UTILITIES_HOME/json.sh get LOG_FILE $ENV_VARIABLES_FILE)

if [ $LOGGING = "enabled" ]
then
  echo "$1:   $2" >> $DEVOPSWORKS_ROOT/$LOG_FILE
fi