#!/bin/bash

DEFAULT_DEBUG=False
DEFAULT_SERVER_NAME="Default Valheim Server"
DEFAULT_SERVER_PORT=2456
DEFAULT_WORLD_NAME="DefaultGeneratedWorld"
DEFAULT_SERVER_PASSWORD=secret
DEFAULT_SAVE_DIR=/valheim-server/save
SAVE_DIR=$DEFAULT_SAVE_DIR
DEFAULT_PUBLIC=1

if [[ -n "${SERVER_NAME}" ]]; then SERVER_NAME="${SERVER_NAME}"; else SERVER_NAME=${DEFAULT_SERVER_NAME}; fi
if [[ -n "${SERVER_PORT}" ]]; then SERVER_PORT=${SERVER_PORT}; else SERVER_PORT=${DEFAULT_SERVER_PORT} ; fi
if [[ -n "${WORLD_NAME}" ]]; then WORLD_NAME="${WORLD_NAME}"; else WORLD_NAME="${DEFAULT_WORLD_NAME}"; fi
if [[ ${#SERVER_PASSWORD} -gt 4 ]]; then SERVER_PASSWORD="${SERVER_PASSWORD}"; else SERVER_PASSWORD="${DEFAULT_SERVER_PASSWORD}"; fi

if [ -n "${PUBLIC}" ];
then
  if [[ "$(echo $PUBLIC | tr A-Z a-z)" = "true" ]]
  then
    PUBLIC=1
  elif [[ "$(echo $PUBLIC | tr A-Z a-z)" = "false" ]]
  then
    PUBLIC=0
  else
    PUBLIC=${DEFAULT_PUBLIC}
  fi
else
  PUBLIC=${DEFAULT_PUBLIC}
fi

if [ -n "${AUTOUPDATE}" ];
then
  if [ "$(echo $AUTOUPDATE | tr A-Z a-z)" = "true" ];
  then
    SCRIPT_AUTOUPDATE="true"
  elif [ "$(echo $AUTOUPDATE | tr A-Z a-z)" = "false" ];
  then
    SCRIPT_AUTOUPDATE="false"
  else
    SCRIPT_AUTOUPDATE="false"
  fi
else
  SCRIPT_AUTOUPDATE="false"
fi

if [[ "${DEBUG}" == "true" ]]
then
  echo "SERVER_NAME -> ${SERVER_NAME}"
  echo "SERVER_PORT -> ${SERVER_PORT}"
  echo "WORLD_NAME -> ${WORLD_NAME}"
  echo "SERVER_PASSWORD -> ${SERVER_PASSWORD}"
  echo "SAVE_DIR -> ${SAVE_DIR}"
  echo "PUBLIC -> ${PUBLIC}"
  echo "AUTOUPDATE -> ${SCRIPT_AUTOUPDATE}"
fi