import 'package:command_runner/command_runner.dart';

import 'src/commands/get_article.dart';
import 'src/commands/search.dart';
import 'src/logger.dart';

export 'src/commands/get_article.dart';
export 'src/commands/search.dart';
export 'src/logger.dart';

Future<void> main(List<String> arguments) async {
  final errorLogger = initFileLogger('errors');
  final app =
      CommandRunner(
          onOutput: (Object output) async {
            await write(output.toString());
          },
          onError: (Object error) {
            if (error is Error) {
              errorLogger.severe(
                '[Error] ${error.toString()}\n${error.stackTrace}',
              );
              throw error;
            }
            if (error is Exception) {
              errorLogger.warning(error);
              print(error);
            }
          },
        )
        ..addCommand(HelpCommand())
        ..addCommand(SearchCommand(logger: errorLogger))
        ..addCommand(GetArticleCommand(logger: errorLogger));

  app.run(arguments);
}
