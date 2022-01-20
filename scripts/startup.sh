#!/bin/bash

DEFAULT_DEBUG=False
DEFAULT_SERVER_NAME="Default Valheim Server"
DEFAULT_SERVER_PORT=2456
DEFAULT_WORLD_NAME="DefaultGeneratedWorld"
DEFAULT_SERVER_PASSWORD=secret
DEFAULT_SAVE_DIR=/valheim-server/save
DEFAULT_PUBLIC=1
DEFAULT_GAME_MODE=vanilla




if [[ "${DEBUG}" == "true" ]]
then
  echo "SERVER_NAME -> ${SERVER_NAME}"
  echo "SERVER_PORT -> ${SERVER_PORT}"
  echo "WORLD_NAME -> ${WORLD_NAME}"
  echo "SERVER_PASSWORD -> ${SERVER_PASSWORD}"
  echo "SAVE_DIR -> ${DEFAULT_SAVE_DIR}"
  echo "PUBLIC -> ${PUBLIC}"
  echo "GAME_MODE -> ${GAME_MODE}"
  echo "AUTOUPDATE -> ${SCRIPT_AUTOUPDATE}"
  echo $ARGUMENT_STRING
fi