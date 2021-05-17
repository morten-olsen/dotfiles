SDK_LOCATION="$HOME/Android/Sdk"
JAVA_LOCATION="/opt/android-studio/jre"
if [ -d "$SDK_LOCATION" ]; then
  export ANDROID_HOME="$SDK_LOCATION"
  export PATH="$PATH:$SDK_LOCATION/platform-tools"
fi

if [ -d "$JAVA_LOCATION" ]; then
  export JAVA_HOME="$JAVA_LOCATION"
fi

