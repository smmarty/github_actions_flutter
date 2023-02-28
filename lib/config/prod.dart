import 'package:flutter_cicd_sample/config/base.dart';
import 'package:friflex_env/friflex_env.dart';

part 'prod.g.dart';

@Envied(
  name: 'ProdConfig',
  path: 'env/prod.env',
)
class ProdConfig extends BaseConfig {
  @override
  @EnviedField()
  final String value = _ProdConfig.value;

  @override
  @EnviedField()
  final String value2 = _ProdConfig.value2;
}
