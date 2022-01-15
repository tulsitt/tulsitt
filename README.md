# Flutter Template App

## Requirements

- iOS 11+
- Xcode 12.1+
- Android API 4.x +
- Android Studio 4.0 +
- Flutter 2.8.1


## Installation

#### yaml (Sampling)
You can use [Pubs](https://pub.dev/) to install `YourLibrary` by adding it to your `pubspec.yaml`:

```ruby
flutter:
    sdk: flutter

  flutter_localizations: # add this
    sdk: flutter

  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^0.1.2
  # Service locator
  # https://pub.dev/packages/get_it
  get_it: ^7.2.0

  # Lottie for animation
  # https://pub.dev/packages/lottie
  # Optional
  lottie: ^1.1.0

  # For check internet connectivity
  # https://pub.dev/packages/connectivity
  # Optional
  connectivity: ^3.0.6

  # For state management
  # https://pub.dev/packages/get/install
  get: ^4.3.5

  # For show loading dialog
  # https://pub.dev/packages/load/install
  load: ^1.0.0

  # For svg image support
  # https://pub.dev/packages/flutter_svg/install
  flutter_svg: ^0.22.0
  #Provides internationalization and localization facilities, including message translation, plurals and genders, date/number formatting and parsing, and bidirectional text
  #https://pub.dev/packages/intl/versions/0.17.0-nullsafety.2
  intl: ^0.17.0

  # For A Flutter widget for rendering HTML and CSS as Flutter widgets.
  #https://pub.dev/packages/flutter_html/install
  flutter_html: ^2.2.1

 
```

#### Common classes

- Configuration 
- Constants
- Environment
- Extensions
- ApiManager 
- Connectivity Helper 
- Haptic Helper 
- Theme 


#### Known Issues

- Loader Dismissed on press of physical back button

```bash
.
├── README.md
├── analysis_options.yaml
├── android
├── assets
│   ├── images
│   └── lottie    
├── build
│   └── ios    
├── flutter_base.iml
├── ios
│    └── ExportOptions.plist
├── lib
│   ├── main.dart
│   ├── commoncompant
│   │   ├── alerts
│   │   └── common    
│   │   └── ErrorView    
│   │   └── GradientButtonWidget    
│   │   └── loader 
│   ├── screens
│   │   ├── splash
│   │   │   └── splash.dart
│   │   │   └── splash_controller.dart
│   │   ├── home
│   │   │   └── home_screen.dart
│   │   │   └── home_controller.dart
│   │   ├── details
│   │   │   └── details_screen.dart
│   │   │   └── details_controller.dart

│   └── utils
│       ├── common
│       │   ├── constants.dart
│       │   ├── image_const.dart
│       │   └── env.dart
│       ├── extensions
│       │   ├── duration_extension.dart
│       │   ├── double_extension.dart
│       │   ├── extension.dart
│       │   ├── text_style_extension.dart
│       ├── helpers
│       │   ├── connectivity.dart
│       └── theme
│           ├── colors.dart
│           └── style.dart
├── pubspec.lock
├── pubspec.yaml
├── lang
│   └── localization
```

