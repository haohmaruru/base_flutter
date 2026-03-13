# install firebase CLI if need
curl -sL https://firebase.tools | bash
# gen code for model
flutter pub run build_runner build --delete-conflicting-outputs
# gen code for language
flutter gen-l10n
# add permission for script
chmod +x icons-gen.sh
chmod +x images-gen.sh
# gen code for icon SVG file
./icons-gen.sh
# gen code for image
./images-gen.sh
