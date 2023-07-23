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
    as _i14;
import '../../../features/analysis/domain/domain.dart' as _i15;
import '../../../features/analysis/domain/repositories/analysis_repository.dart'
    as _i3;
import '../../../features/analysis/domain/repositories/speed_time_repository.dart'
    as _i11;
import '../../../features/analysis/domain/services/analysis_service.dart'
    as _i5;
import '../../../features/analysis/domain/services/speed_time_service.dart'
    as _i13;
import '../../../features/analysis/domain/value_objects/speed_time/speed_time.dart'
    as _i9;
import '../../../features/analysis/infrastructure/data_sources/file_data_source.dart'
    as _i6;
import '../../../features/analysis/infrastructure/dto/speed_time_dto.dart'
    as _i8;
import '../../../features/analysis/infrastructure/mappers/speed_time_dto_to_speed_time_mapper.dart'
    as _i10;
import '../../../features/analysis/infrastructure/repositories/analysis_repository.dart'
    as _i4;
import '../../../features/analysis/infrastructure/repositories/speed_time_repository.dart'
    as _i12;
import '../../../utils/mapper.dart' as _i7;

const String _dev = 'dev';
const String _prod = 'prod';

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
  gh.lazySingleton<_i6.FileDataSource>(() => _i6.FileDataSource());
  gh.lazySingleton<_i7.Mapper<_i8.SpeedTimeDTO, _i9.SpeedTime>>(
      () => _i10.SpeedTimeDTOToSpeedTimeMapper());
  gh.lazySingleton<_i11.SpeedTimeRepository>(
    () => _i12.DevSpeedTimeRepository(),
    registerFor: {_dev},
  );
  gh.lazySingleton<_i11.SpeedTimeRepository>(
    () => _i12.ProdSpeedTimeRepository(
      gh<_i6.FileDataSource>(),
      gh<_i7.Mapper<_i8.SpeedTimeDTO, _i9.SpeedTime>>(),
    ),
    registerFor: {_prod},
  );
  gh.lazySingleton<_i13.SpeedTimeService>(
      () => _i13.SpeedTimeService(gh<_i11.SpeedTimeRepository>()));
  gh.factory<_i14.AnalysisBloc>(() => _i14.AnalysisBloc(
        gh<_i15.SpeedTimeService>(),
        gh<_i15.AnalysisService>(),
      ));
  gh.lazySingleton<_i3.AnalysisRepository>(
    () => _i4.ProdAnalysisRepository(gh<_i6.FileDataSource>()),
    registerFor: {_prod},
  );
  return getIt;
}
