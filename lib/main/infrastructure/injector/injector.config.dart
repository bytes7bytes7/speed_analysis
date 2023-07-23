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
    as _i13;
import '../../../features/analysis/application/mappers/analysis_result_to_analysis_result_vm_mapper.dart'
    as _i9;
import '../../../features/analysis/application/view_models/analysis_result_vm/analysis_result_vm.dart'
    as _i8;
import '../../../features/analysis/application/view_models/view_models.dart'
    as _i15;
import '../../../features/analysis/domain/domain.dart' as _i14;
import '../../../features/analysis/domain/repositories/analysis_repository.dart'
    as _i3;
import '../../../features/analysis/domain/repositories/speed_time_repository.dart'
    as _i10;
import '../../../features/analysis/domain/services/analysis_service.dart'
    as _i5;
import '../../../features/analysis/domain/services/speed_time_service.dart'
    as _i12;
import '../../../features/analysis/domain/value_objects/analysis_result/analysis_result.dart'
    as _i7;
import '../../../features/analysis/infrastructure/repositories/analysis_repository.dart'
    as _i4;
import '../../../features/analysis/infrastructure/repositories/speed_time_repository.dart'
    as _i11;
import '../../../utils/mapper.dart' as _i6;

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
  gh.lazySingleton<_i3.AnalysisRepository>(
    () => _i4.DevAnalysisRepository(),
    registerFor: {_dev},
  );
  gh.lazySingleton<_i5.AnalysisService>(
      () => _i5.AnalysisService(gh<_i3.AnalysisRepository>()));
  gh.factory<_i6.Mapper<_i7.AnalysisResult, _i8.AnalysisResultVM>>(
      () => _i9.AnalysisResultToAnalysisResultVMMapper());
  gh.lazySingleton<_i10.SpeedTimeRepository>(
    () => _i11.DevSpeedTimeRepository(),
    registerFor: {_dev},
  );
  gh.lazySingleton<_i12.SpeedTimeService>(
      () => _i12.SpeedTimeService(gh<_i10.SpeedTimeRepository>()));
  gh.factory<_i13.AnalysisBloc>(() => _i13.AnalysisBloc(
        gh<_i14.SpeedTimeService>(),
        gh<_i14.AnalysisService>(),
        gh<_i6.Mapper<_i14.AnalysisResult, _i15.AnalysisResultVM>>(),
      ));
  return getIt;
}
