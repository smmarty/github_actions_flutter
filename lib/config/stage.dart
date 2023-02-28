import 'package:flutter_cicd_sample/config/base.dart';
import 'package:friflex_env/friflex_env.dart';

part 'stage.g.dart';

@Envied(
  name: 'StageConfig',
  path: 'env/stage.env',
)
class StageConfig extends BaseConfig {
  @override
  @EnviedField()
  final String value = _StageConfig.value;

  @override
  @EnviedField()
  final String value2 = _StageConfig.value2;
}
