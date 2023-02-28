import 'package:dotenv/dotenv.dart';
import 'package:flutter_cicd_sample/config/prod.dart';
import 'package:flutter_cicd_sample/config/stage.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('stage app config test', () {
    final envs = DotEnv()..load(['env/stage.env']);
    final config = StageConfig();
    for (final element in envs.map.entries) {
      expect(config[element.key].toString(), element.value);
    }
  });

  test('prod app config test', () {
    final envs = DotEnv()..load(['env/prod.env']);
    final config = ProdConfig();
    // Удалить
    // Это нужно только для проверки теста в ci
    print('Prod value1:${config.value}');
    print('Prod value2:${config.value2}');
    for (final element in envs.map.entries) {
      expect(config[element.key].toString(), element.value);
    }
  });
}
