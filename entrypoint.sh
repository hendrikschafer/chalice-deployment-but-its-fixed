#!/bin/sh -l

PYTHON_VERSION=$1

if [ ! -z "$WORKING_DIRECTORY" ]
then
      cd "$WORKING_DIRECTORY"
fi

if [ ! -z "$REQUIREMENTS_FILE" ]
then
      pip install -r "$REQUIREMENTS_FILE" -t vendor/ --upgrade
      pip install -r "$REQUIREMENTS_FILE" --upgrade
fi

if ! [ -z "$PROJECT_DIR" ]
then
      projectDirSubCommand="--project-dir $PROJECT_DIR"
fi

if ! [ -z "$STAGE" ]
then
      stageSubCommand="--stage $STAGE"
fi

command="chalice $projectDirSubCommand $OPERATION $stageSubCommand"

eval $command
