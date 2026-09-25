#!/bin/sh
set -e
GRADLE_VERSION=8.9
DIST="$HOME/.gradle/wrapper/dists/gradle-$GRADLE_VERSION-bin.zip"
DIR="$HOME/.gradle/wrapper/dists/gradle-$GRADLE_VERSION"
if [ ! -x "$DIR/gradle-$GRADLE_VERSION/bin/gradle" ]; then
  mkdir -p "$DIR"
  curl -fsSL "https://services.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip" -o "$DIST"
  unzip -q "$DIST" -d "$DIR"
fi
exec "$DIR/gradle-$GRADLE_VERSION/bin/gradle" "$@"
