// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/home/data/usecases/get_comics_usecase.dart' as _i3;
import '../../features/home/data/usecases/get_newest_comics_usecase.dart'
    as _i4;
import '../network/api_provider.dart' as _i7;
import '../network/interceptors/logging_interceptor.dart' as _i5;
import '../utils/preferences.dart' as _i6;
import 'injection.dart' as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectionModule = _$InjectionModule();
  gh.factory<_i3.GetComicsUsecase>(() => _i3.GetComicsUsecase());
  gh.factory<_i4.GetNewestComicsUsecase>(() => _i4.GetNewestComicsUsecase());
  gh.factory<_i5.LoggingInterceptor>(() => _i5.LoggingInterceptor());
  await gh.factoryAsync<_i6.Preferences>(() => injectionModule.prefs,
      preResolve: true);
  gh.singleton<_i7.ApiProvider>(_i7.ApiProvider());
  return get;
}

class _$InjectionModule extends _i8.InjectionModule {}
