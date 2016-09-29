#!/usr/bin/env bash

set -u -o -x -v

echo $ROCKET_WORKSPACE
echo $ROCKET_ARTIFACTS
echo $ANDROID_HOME
echo $ANDROID_SDK_HOME
echo $ANDROID_SDK_ROOT
echo $ANDROID_NDK_HOME
echo $ANDROID_NDK_ROOT

pwd
ls

./gradlew assemble
