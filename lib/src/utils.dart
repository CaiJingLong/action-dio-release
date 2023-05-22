import 'dart:io';

void writePubTokenToFile(String token) {
  final home = Platform.environment['HOME'];

  final file = File('$home/.config/dart/pub-credentials.json');

  if (!file.existsSync()) {
    file.createSync(recursive: true);
  }

  file.writeAsStringSync(token);
}
