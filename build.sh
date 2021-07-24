#!/usr/bin/env bash

# build jar only, no tests, no chart
./gradlew clean build bootjar -x test

docker build --quiet --build-arg JAR_FILE='build/libs/*.jar' -t ${IMAGE} .