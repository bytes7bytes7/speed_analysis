import 'speed_time.dart';
import 'speed_time_repository.dart';

class SpeedTimeService {
  const SpeedTimeService(this._speedTimeRepository);

  final SpeedTimeRepository _speedTimeRepository;

  Future<List<SpeedTime>?> fetchDataFromFile() async {
    return _speedTimeRepository.fetchDataFromFile();
  }
}
