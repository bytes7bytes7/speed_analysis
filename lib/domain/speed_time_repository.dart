import 'speed_time.dart';

abstract class SpeedTimeRepository {
  const SpeedTimeRepository();

  Future<List<SpeedTime>?> fetchDataFromFile();
}
