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
    return SpeedTimeDTO(
      speed: list[0] as double,
      time: list[1] as double,
      x: list[2] as double?,
      y: list[3] as double?,
    );
  }
}
