import 'package:freezed_annotation/freezed_annotation.dart';

part 'speed_time.freezed.dart';

@freezed
class SpeedTime with _$SpeedTime {
  const factory SpeedTime({
    required double speed,
    required double time,
    required double? x,
    required double? y,
  }) = _SpeedTime;
}
