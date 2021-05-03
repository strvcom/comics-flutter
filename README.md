# STRV Flutter Workshop: Comics App

**Warning:** This workshop is using Flutter 2!

## Prerequisites

You can install flutter using brew: `brew install --cask flutter`. In this case you should be able to skip steps 1 - 3.

1) Download flutter SDK form official website: [https://flutter.dev/docs/get-started/install](https://flutter.dev/docs/get-started/install) 
2) Unzip to folder by your choice
3) Set correct system path(environment) so you can launch `flutter` command from any terminal
4) Run `flutter doctor` (You may see some error inside.)
5) You will need to set up your Android Studio / Xcode / VS Code (I strongly recommend VS Code).
6) Here is list of required and really recommended plugins for VS Code:

  Required:
  - Flutter
  - Dart

  Recommended:
  - Awesome Flutter Snippets
  - Bloc
  - Bracket Pair Colorizer
  - Flutter Feature scaffolding
  
7) Once you have your IDE set up, check it again with `flutter doctor` cmd.

### Additional VSCode setup
- Once you are done, please set "Toggle Line Comment" keyboard shortcut in VS Code to something you will know! By default there is something like `Ctrl + shift + ú`!
- I also recommend to set "Quick Fix..." command to some suitable shortcut. (For example I put it on `Alt + Enter` so it is the same as in Android Studio)

To correctly format the code in VS Code, I also recommend to add: 
```
"[dart]": {
    "editor.formatOnSave": true,
    "editor.formatOnType": true,
    "editor.rulers": [
        120
    ],
    "editor.selectionHighlight": false,
    "editor.suggest.snippetsPreventQuickSuggestions": false,
    "editor.suggestSelection": "first",
    "editor.tabCompletion": "onlySnippets",
    "editor.wordBasedSuggestions": false
},
```
in your VSCode settings.json file. You need then restart the IDE so the changes take place!

## Get the project
First, clone whole project: [https://github.com/strvcom/android-flutter](https://github.com/strvcom/android-flutter)
You should find two folders in here:
- strv_app_implemented
- strv_app_workshop

Please make sure you are able to compile and run all of them before the workshop.

You should be able to easily check that by going into propriate directory and running `flutter run` cmd.

**Note:** You can also run it by opening VSCode, navigating to main.dart file, and hitting `Run` text right above the `void main()` method.

# Helpful stuff

## Resources - Rename app
```
flutter pub run rename --appname XKCD-Workshop -t android,ios
```

## Resources - Generate new app icon
```
flutter pub run flutter_launcher_icons:main
```

## Resources - Generate splash screen
```
flutter pub run flutter_native_splash:create
```

## Developed by
- [Lukas Hermann](mailto:lukas.hermann@strv.com)