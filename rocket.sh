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

echo $ANDROID_HOME/licenses/android-sdk-license
echo '8933bad161af4178b1185d1a37fbf41ea5269c55' > $ANDROID_HOME/licenses/android-sdk-license
echo $ANDROID_HOME/licenses/android-sdk-license

./gradlew assemble
