#!/bin/bash
# Upload Flutter symbols to Crashlytics for obfuscated builds

if [ "${CONFIGURATION}" != "Release"* ]; then
  echo "Skipping symbols upload for non-release build (${CONFIGURATION})"
  exit 0
fi

# Path to the GoogleService-Info.plist for the current flavor
# This path matches where the 'Setup Firebase Environment' script copies the flavor-specific plist.
PLIST_PATH="${PROJECT_DIR}/${TARGET_NAME}/Firebase/GoogleService-Info.plist"

if [ ! -f "$PLIST_PATH" ]; then
  echo "Error: GoogleService-Info.plist not found at $PLIST_PATH. Skipping Flutter symbols upload."
  exit 0
fi

# Extract GOOGLE_APP_ID from the plist
GOOGLE_APP_ID=$(grep -A1 "GOOGLE_APP_ID" "$PLIST_PATH" | grep string | sed 's/[^>]*>\([^<]*\).*/\1/')

if [ -z "$GOOGLE_APP_ID" ]; then
  echo "Error: Could not find GOOGLE_APP_ID in $PLIST_PATH. Skipping Flutter symbols upload."
  exit 0
fi

# Path to the Flutter symbols directory
# When running from Xcode (ios/ directory), the build directory is at ../build/
SYMBOLS_DIR="${PROJECT_DIR}/../build/ios/outputs/symbols"

if [ ! -d "$SYMBOLS_DIR" ]; then
  echo "Warning: Symbols directory not found at $SYMBOLS_DIR."
  echo "Ensure you are building with '--obfuscate --split-debug-info=build/ios/outputs/symbols'."
  exit 0
fi

echo "Uploading Flutter symbols for App ID: $GOOGLE_APP_ID from $SYMBOLS_DIR"

# Add common paths for firebase CLI (Xcode might have restricted PATH)
export PATH=$PATH:/usr/local/bin:/opt/homebrew/bin

if command -v firebase >/dev/null 2>&1; then
  firebase crashlytics:symbols:upload --app="$GOOGLE_APP_ID" "$SYMBOLS_DIR"
else
  echo "Error: firebase CLI not found. Please install it using 'npm install -g firebase-tools'."
fi
