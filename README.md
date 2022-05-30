## Things to read to get started

- [intro to dart syntax](https://dart.dev/samples) if you know typescript, you are in good shape
- [install flutter](https://docs.flutter.dev/get-started/install) - installing flutter is a little tricky, requires choosing a location to install. My goodness, install docs are trash, had to do this to get it to work: https://github.com/flutter/flutter/issues/40140
- must install whatever devices you want to deploy to, at minimum just need a web browser
- create your first app with `flutter create first_app` Note: must be underscore case
- start dev mode with `flutter run` - it will prompt you for which device to run on
- [vs code extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter)
- [hot reload](https://stackoverflow.com/questions/49210769/vscode-hot-reload-for-flutter)
- [recommended settings](https://dartcode.org/docs/recommended-settings/)
- [actually getting hot reload to work](https://github.com/flutter/flutter/issues/29096) - have to run app with f5 in vscode, not external terminal usage allowed

## Notes

- my goodness this stuff is verbose
- no imports, yet tons of stuff in the environment that I'm not sure where it is coming from
- [understanding the import and export style](https://medium.com/const-final-and-static-in-dart/libraries-packages-and-import-in-dart-how-they-work-and-should-be-used-part-1-ccde79d5ec02)
- [dart language deep dive](https://dart.dev/guides/language/language-tour)
- [testing](https://blog.logrocket.com/automated-testing-flutter/)
- [graphql](https://pub.dev/packages/graphql_flutter)
- [hooks?](https://github.com/rrousselGit/flutter_hooks) - seems like a bad idea to me, actually, way less verbose, but not listed as an official state option on the flutter docs [hooks guide](https://medium.com/flutter-community/flutter-hooks-7754df814995)
- [fetching data](https://docs.flutter.dev/cookbook/networking/fetch-data)

## Commands

- create new app `flutter create <app name>`
- run app `flutter run` (better to do this from within vs code and use f5 (debug mode))
