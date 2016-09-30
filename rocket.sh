#!/usr/bin/env bash

ls -all

cd $ROCKET_WORKSPACE

set -u -o -x -v

echo $ROCKET_WORKSPACE
echo $ROCKET_ARTIFACTS
echo $ANDROID_HOME
echo $ANDROID_SDK_HOME
echo $ANDROID_SDK_ROOT
echo $ANDROID_NDK_HOME
echo $ANDROID_NDK_ROOT

cat $ANDROID_HOME/licenses/android-sdk-license
mkdir -p $ANDROID_HOME/licenses/
echo '8933bad161af4178b1185d1a37fbf41ea5269c55' > $ANDROID_HOME/licenses/android-sdk-license
cat $ANDROID_HOME/licenses/android-sdk-license

./gradlew assemble
