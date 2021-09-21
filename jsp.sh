#!/bin/env bash

ARGS=($@)

function main () {
    if [[ -z ${ARGS[0]} ]]; then
        echo "ERROR: Please provide project name."
        echo "USAGE: ./jsp.sh YourCoolProjectName /home/your-user/MyProjects"
        exit
    fi

    if [[ -z ${ARGS[1]} ]]; then
        echo "ERROR: Please provide path where to copy location."
        echo "USAGE: ./jsp.sh YourCoolProjectName /home/your-user/MyProjects"
        exit
    fi

    echo "INFO: Copying file."
    PROJECT_PATH="${ARGS[1]}/${ARGS[0]}"
    cp -r src $PROJECT_PATH

    echo "INFO: Initializing Git repo."
    cd $PROJECT_PATH
    git init
    git add .

    echo "INFO: Done. Happy coding!"
}

main
