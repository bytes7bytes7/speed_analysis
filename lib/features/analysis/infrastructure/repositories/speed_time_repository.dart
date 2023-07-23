import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../../../utils/mapper.dart';
import '../../domain/repositories/speed_time_repository.dart';
import '../../domain/value_objects/speed_time/speed_time.dart';
import '../data_sources/file_data_source.dart';
import '../dto/speed_time_dto.dart';

@dev
@LazySingleton(as: SpeedTimeRepository)
class DevSpeedTimeRepository implements SpeedTimeRepository {
  const DevSpeedTimeRepository();

  @override
  Future<List<SpeedTime>?> fetchDataFromFile() {
    final rand = Random();

    return Future.delayed(const Duration(seconds: 2), () {
      return List.generate(60 * 60, (index) {
        return SpeedTime(
          speed: rand.nextInt(100) + rand.nextDouble(),
          time: index.toDouble(),
          x: 1,
          y: 1,
        );
      });
    });
  }
}

@prod
@LazySingleton(as: SpeedTimeRepository)
class ProdSpeedTimeRepository implements SpeedTimeRepository {
  const ProdSpeedTimeRepository(
    this._fileDataSource,
    this._speedTimeDTOToSpeedTimeMapper,
  );

  final FileDataSource _fileDataSource;
  final Mapper<SpeedTimeDTO, SpeedTime> _speedTimeDTOToSpeedTimeMapper;

  @override
  Future<List<SpeedTime>?> fetchDataFromFile() async {
    final result = await _fileDataSource.pickCsvFile();
    if (result == null) {
      return null;
    }

    return _speedTimeDTOToSpeedTimeMapper.mapList(result);
  }
}
