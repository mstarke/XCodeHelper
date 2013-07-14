#!/bin/bash
# Increments the Version Number by one
# Add this as a pre-action to the Archive Scheme
# to increment only on releases
#
PLIST_FILE=$PROJECT_DIR/$INFOPLIST_FILE
VERSION=$(/usr/libexec/PlistBuddy -c "Print CFBundleVersion" $PLIST_FILE)
VERSION=$(($VERSION + 1))
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $VERSION" $PLIST_FILE