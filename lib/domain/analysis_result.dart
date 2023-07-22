class AnalysisResult {
  const AnalysisResult({
    required this.timePeriod,
    required this.averageSpeed,
  });

  final double timePeriod;
  final List<double> averageSpeed;

  double get totalTime {
    return timePeriod * averageSpeed.length;
  }

  Map<double, double> get percentOfAverageSpeed {
    final singlePercentPart = averageSpeed.length / 100;

    // {speed: percent}
    final result = <double, double>{};
    for (final e in averageSpeed) {
      final oldPercent = result[e] ?? 0;

      result[e] = oldPercent + singlePercentPart;
    }

    return result;
  }
}
