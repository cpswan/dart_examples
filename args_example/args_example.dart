import 'package:args/args.dart';

void main(List<String> arguments) {

  final parser = ArgParser()
    ..addOption('example', abbr: 'e')
    ..addOption('option', abbr: 'o');

  ArgResults argResults = parser.parse(arguments);

  print(argResults['example']);
  print(argResults['option']);

}