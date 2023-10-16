## Installation

- Check if you are in the beta channel of flutter SDK and the version "  sdk: ">=3.0.0 <4.0.0"
  ". [Instruction to change flutter channel](https://github.com/flutter/flutter/wiki/Flutter-build-release-channels#how-to-change-channels).
- Clone the repo
  ```sh
  git clone https://github.com/dmontil/doctus_test
  ```
- And then we can use the normal build and run procedure
  ```sh
  flutter pub get
  flutter run
  ```
- Some files like `*.freezed.dart`, `*.g.dart`, `*.mocks.dart` are auto generated. If there is any issue from these files just run this command to regenerate them.
  ```sh
  flutter pub run build_runner watch --delete-conflicting-outputs
  ```

