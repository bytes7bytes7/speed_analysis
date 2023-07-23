import 'package:injectable/injectable.dart';

import '../../domain/repositories/speed_time_repository.dart';
import '../../domain/value_objects/speed_time/speed_time.dart';

@dev
@LazySingleton(as: SpeedTimeRepository)
class DevSpeedTimeRepository implements SpeedTimeRepository {
  const DevSpeedTimeRepository();

  @override
  Future<List<SpeedTime>?> fetchDataFromFile() {
    return Future.delayed(const Duration(seconds: 2), () {
      return List.generate(10, (index) {
        return SpeedTime(
          speed: 20 * index.toDouble(),
          time: index.toDouble(),
          x: 1,
          y: 1,
        );
      });
    });
  }
}
