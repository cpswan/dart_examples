# showplatform.dart

```dart
import 'dart:io' show Platform, stdout;

void main() {
  print(Platform.version);
}
```

Pretty much a `Hello World` this example prints the same output as
`dart --version`, just without prepending `Dart SDK version:`.

It was created to test multi architecture Docker builds, such as those in
the [at_dockerfiles](https://github.com/atsign-company/at_dockerfiles) repo
(now deprecated).

This example was used for
[dart-lang/sdk #48366](https://github.com/dart-lang/sdk/issues/48366)
though that issue turned out to be `libseccomp` related rather than an
SDK thing.