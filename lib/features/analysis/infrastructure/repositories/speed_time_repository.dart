import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../domain/repositories/speed_time_repository.dart';
import '../../domain/value_objects/speed_time/speed_time.dart';

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
