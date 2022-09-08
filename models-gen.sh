agrs=''
if [[ $1 == '-f' ]]
then
    agrs='--delete-conflicting-outputs'
fi
flutter packages pub run build_runner build ${agrs}