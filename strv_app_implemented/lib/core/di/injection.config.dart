// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../network/api_provider.dart';
import '../../features/home/domain/usecases/get_comics_usecase.dart';
import '../../features/home/domain/usecases/get_newest_comics_usecase.dart';
import 'injection.dart';
import '../network/interceptors/logging_interceptor.dart';
import '../utils/preferences.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final injectionModule = _$InjectionModule();
  gh.factory<GetComicsUsecase>(() => GetComicsUsecase());
  gh.factory<GetNewestComicsUsecase>(() => GetNewestComicsUsecase());
  gh.factory<LoggingInterceptor>(() => LoggingInterceptor());
  final resolvedPreferences = await injectionModule.prefs;
  gh.factory<Preferences>(() => resolvedPreferences);

  // Eager singletons must be registered in the right order
  gh.singleton<ApiProvider>(ApiProvider());
  return get;
}

class _$InjectionModule extends InjectionModule {}
