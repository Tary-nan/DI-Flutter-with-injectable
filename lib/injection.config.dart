// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:injectable_tutorial/domain/i_counter_repository.dart' as _i3;
import 'package:injectable_tutorial/infrastructure/counter_repository.dart'
    as _i4;
import 'package:injectable_tutorial/infrastructure/dev_counter_repository.dart'
    as _i5;
import 'package:injectable_tutorial/infrastructure/mock_counter_repository.dart'
    as _i6;
import 'package:injectable_tutorial/presentation/counter_change_notifier.dart'
    as _i7;

const String _prod = 'prod';
const String _dev = 'dev';
const String _test = 'test';

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ICounterRepository>(
      () => _i4.CounterRepository(),
      registerFor: {_prod},
    );
    gh.factory<_i3.ICounterRepository>(
      () => _i5.DevCounterRepository(),
      registerFor: {_dev},
    );
    gh.factory<_i3.ICounterRepository>(
      () => _i6.MockCounterRepository(),
      registerFor: {_test},
    );
    gh.factory<_i7.CounterCubit>(
        () => _i7.CounterCubit(gh<_i3.ICounterRepository>()));
    return this;
  }
}
