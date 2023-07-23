import 'package:injectable/injectable.dart';

import '../repositories/speed_time_repository.dart';
import '../value_objects/speed_time/speed_time.dart';

@lazySingleton
class SpeedTimeService {
  const SpeedTimeService(this._speedTimeRepository);

  final SpeedTimeRepository _speedTimeRepository;

  Future<List<SpeedTime>?> fetchDataFromFile() async {
    return _speedTimeRepository.fetchDataFromFile();
  }
}
