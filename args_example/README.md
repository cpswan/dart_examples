# args_example.dart

```dart
import 'package:args/args.dart';

void main(List<String> arguments) {

  final parser = ArgParser()
    ..addOption('example', abbr: 'e')
    ..addOption('option', abbr: 'o');

  ArgResults argResults = parser.parse(arguments);

  print(argResults['example']);
  print(argResults['option']);

}
```

This example was created for
[dart-lang/sdk #49302](https://github.com/dart-lang/sdk/issues/49302)
'dart compile jit-snapshot can't take flags (like -o) or --options as
training arguments' where the compiler was seeing all arguments as directed
to itself. This caused the compiler to error on args it didn't expect, and
also prevented the args from being passed through to the training run for
the program being compiled.

The original example only took a `--example` or `-e` argument, and the
`--option` or `-o` argument was added to verify that the same args
could be repeated, with one being positionally used by the compiler
to define the output file and the other being used by the example:

```
dart compile jit-snapshot -o args.jit ./args_example.dart -o 123 -e 456
```