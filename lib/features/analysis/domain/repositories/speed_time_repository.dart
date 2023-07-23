import '../value_objects/speed_time/speed_time.dart';

abstract class SpeedTimeRepository {
  const SpeedTimeRepository();

  Future<List<SpeedTime>?> fetchDataFromFile();
}
