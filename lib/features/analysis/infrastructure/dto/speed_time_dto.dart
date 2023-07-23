class SpeedTimeDTO {
  const SpeedTimeDTO({
    required this.speed,
    required this.time,
    required this.x,
    required this.y,
  });

  final double speed;
  final double time;
  final double? x;
  final double? y;

  factory SpeedTimeDTO.fromList(List<Object?> list) {
    final tempX = list[1];
    double? x;
    if (tempX is num) {
      x = tempX.toDouble();
    }

    final tempY = list[2];
    double? y;
    if (tempY is num) {
      y = tempY.toDouble();
    }

    return SpeedTimeDTO(
      speed: (list[3] as num).toDouble(),
      time: (list[0] as num).toDouble(),
      x: x,
      y: y,
    );
  }
}
