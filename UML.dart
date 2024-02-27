import 'dart:io';
void main() {
  print('Введите URL:');
  String url = stdin.readLineSync()!;

  // Разбор URL
  Uri uri;
  try {
    uri = Uri.parse(url);
  } catch (e) {
    print('Ошибка: url не коректен');
    return;
  }

  // Вывод частей URL
  print('\nПротокол: ${uri.scheme}');
  print('Хост: ${uri.host}');
  print('Путь: ${uri.path}');
  print('Параметры:');
  uri.queryParameters.forEach((key, value) {
    print('$key: $value');
  });
}