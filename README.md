# STRV Flutter

Prerequisites
=============

1) Download flutter SDK form official website: [https://flutter.dev/docs/get-started/install](https://flutter.dev/docs/get-started/install) 
2) Unzip to folder by your choice
3) Set correct system path(environment) so you can launch `flutter` command from any terminal
4) Run `flutter doctor` (You may see some error inside.)
5) You will need to set up your Android Studio / Xcode / VS Code (I strongly recommend VS Code).
6) Here is list of required and really recommended plugins for VS Code:
###### Required:
  - Flutter 3.20.0
  - Dart 3.20.0
###### Recommended:
  - Awesome Flutter SNippets 2.0.4
  - bloc 5.5.0
  - Bracket Pair Colorizer 1.0.61
  - Flutter Feature scaffolding 1.0.9
  
7) Once you have your IDE set up, check it again with `flutter doctor` cmd

## Get the project
First, clone whole project: [https://github.com/strvcom/android-flutter](https://github.com/strvcom/android-flutter)
You should find three folders in here:
- strv_app_base
- strv_app_implemented
- strv_app_workshop

Please make sure you are able to compile and run all of them before the workshop.

You should be able to easily check that by going into propriate directory and running `flutter run` cmd.

**Note:** You can also run it by opening VSCode, navigating to main.dart file, and hitting `Run` text right above the `void main()` method.

# Helpful stuff

## DI - Listening for injectable changes
```
flutter pub run build_runner watch --delete-conflicting-outputs
```

## Resources - Generating new strings files
```
flutter pub run gen_lang:generate
```

## Resources - Generate new app icon
```
flutter pub run flutter_launcher_icons:main
```

## Resources - Rename app
```
flutter pub run flutter_launcher_name:main
```
## Developed by
- [Lukas Hermann](mailto:lukas.hermann@strv.com)