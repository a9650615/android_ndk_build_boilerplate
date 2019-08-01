#!/bin/sh
if [ ! -d "ndk" ]; then
  curl -O https://dl.google.com/android/repository/android-ndk-r16b-darwin-x86_64.zip
  unzip android-ndk-r16b-darwin-x86_64.zip -d ./ndk 
fi
export NDK_PROJECT_PATH=$(pwd)
cd jni
$(pwd)/../ndk/android-ndk-r16b/ndk-build