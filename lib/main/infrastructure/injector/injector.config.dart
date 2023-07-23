// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../features/analysis/application/blocs/analysis/analysis_bloc.dart'
    as _i3;
import '../../../features/analysis/domain/repositories/analysis_repository.dart'
    as _i4;
import '../../../features/analysis/domain/repositories/speed_time_repository.dart'
    as _i7;
import '../../../features/analysis/domain/services/analysis_service.dart'
    as _i6;
import '../../../features/analysis/domain/services/speed_time_service.dart'
    as _i9;
import '../../../features/analysis/infrastructure/repositories/analysis_repository.dart'
    as _i5;
import '../../../features/analysis/infrastructure/repositories/speed_time_repository.dart'
    as _i8;

const String _dev = 'dev';

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.AnalysisBloc>(() => _i3.AnalysisBloc());
  gh.lazySingleton<_i4.AnalysisRepository>(
    () => _i5.DevAnalysisRepository(),
    registerFor: {_dev},
  );
  gh.lazySingleton<_i6.AnalysisService>(
      () => _i6.AnalysisService(gh<_i4.AnalysisRepository>()));
  gh.lazySingleton<_i7.SpeedTimeRepository>(
    () => _i8.DevSpeedTimeRepository(),
    registerFor: {_dev},
  );
  gh.lazySingleton<_i9.SpeedTimeService>(
      () => _i9.SpeedTimeService(gh<_i7.SpeedTimeRepository>()));
  return getIt;
}
