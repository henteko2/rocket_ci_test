#!/usr/bin/env bash

cd $ROCKET_WORKSPACE

set -u -o -x -v

echo $ROCKET_WORKSPACE
echo $ROCKET_ARTIFACTS
echo $ANDROID_HOME
echo $ANDROID_SDK_HOME
echo $ANDROID_SDK_ROOT
echo $ANDROID_NDK_HOME
echo $ANDROID_NDK_ROOT

./gradlew app:uploadDeployGateDebug
