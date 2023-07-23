import 'package:injectable/injectable.dart';

import '../../../../utils/mapper.dart';
import '../../domain/value_objects/speed_time/speed_time.dart';
import '../dto/speed_time_dto.dart';

@LazySingleton(as: Mapper<SpeedTimeDTO, SpeedTime>)
class SpeedTimeDTOToSpeedTimeMapper extends Mapper<SpeedTimeDTO, SpeedTime> {
  const SpeedTimeDTOToSpeedTimeMapper();

  @override
  SpeedTime map(SpeedTimeDTO item) {
    return SpeedTime(
      speed: item.speed,
      time: item.time,
      x: item.x,
      y: item.y,
    );
  }
}
