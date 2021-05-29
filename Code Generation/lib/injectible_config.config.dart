// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'harsh.dart';
import 'shivam.dart';
import 'vaibhav.dart';

/// Environment names
const _dev = 'dev';
const _prod = 'prod';

/// adds generated dependencies
/// to the provided [GetIt] instance

extension GetItInjectableX on GetIt {
  Future<GetIt> $initGetIt({
    String environment,
    EnvironmentFilter environmentFilter,
  }) async {
    final gh = GetItHelper(this, environment, environmentFilter);
    final harshModule = _$HarshModule();
    final myModule = _$MyModule();
    final testModule = _$TestModule();
    gh.factory<String>(() => harshModule.urlDev,
        instanceName: 'url', registerFor: {_dev});
    gh.factory<String>(() => harshModule.urlProd,
        instanceName: 'url', registerFor: {_prod});
    gh.lazySingleton<Vaibhav>(() => myModule.vaibhavDev, registerFor: {_prod});
    gh.lazySingleton<Vaibhav>(() => myModule.vaibhavProd, registerFor: {_dev});
    final resolvedInt = await testModule.value;
    gh.factory<int>(() => resolvedInt);
    gh.lazySingleton<Harsh>(() => HarshImpl(get<String>(instanceName: 'url')));
    return this;
  }
}

class _$HarshModule extends HarshModule {}

class _$MyModule extends MyModule {}

class _$TestModule extends TestModule {}
