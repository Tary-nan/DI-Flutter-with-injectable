import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:injectable_tutorial/injection.config.dart';

final locator = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies(String env) async =>
    locator.init(environment: env);

abstract class Env {
  static const test = 'test';
  static const dev = 'dev';
  static const prod = 'prod';
}
