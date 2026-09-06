import 'package:cli/cli.dart';
import 'package:logging/logging.dart';
import 'package:test/test.dart';

void main() {
  final logger = Logger('cli_test');

  group('CLI commands', () {
    test('search command requires a search term and supports lucky mode', () {
      final command = SearchCommand(logger: logger);

      expect(command.name, 'search');
      expect(command.requiresArgument, isTrue);
      expect(
        command.options.map((option) => option.name),
        contains('im-feeling-lucky'),
      );
    });

    test('article command has a default article title', () {
      final command = GetArticleCommand(logger: logger);

      expect(command.name, 'article');
      expect(command.defaultValue, 'cat');
    });
  });
}
