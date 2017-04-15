#!/bin/bash
project=$1
username="jsdidierlaurent"

mkdir -p projects
cd projects

if [ ! -d "${project}" ]; then
    git clone "https://github.com/${username}/${project}.git" "${project}"
    cd "${project}"
else
    cd "${project}"
    git pull
fi

docker build -t "${username}/${project}:latest" .
docker push "${username}/${project}"