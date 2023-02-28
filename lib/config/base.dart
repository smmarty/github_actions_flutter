abstract class BaseConfig {
  abstract final String value;
  abstract final String value2;

  final valueKeys = const <String>[
    'value',
    'value2',
  ];

  Object? operator [](Object? key) {
    switch (key) {
      case 'value':
        return value;
      case 'value2':
        return value2;
      default:
        return null;
    }
  }
}
