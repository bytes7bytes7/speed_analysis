import 'package:collection/collection.dart';
import 'package:mocktail/mocktail.dart';
import 'package:speed_analysis/domain/analysis_repository.dart';
import 'package:speed_analysis/domain/analysis_service.dart';
import 'package:speed_analysis/domain/speed_time.dart';
import 'package:speed_analysis/domain/speed_time_repository.dart';
import 'package:test/test.dart';

class MockAnalysisRepository extends Mock implements AnalysisRepository {}

class MockSpeedTimeRepository extends Mock implements SpeedTimeRepository {}

void main() {
  late AnalysisRepository analysisRepository;
  late AnalysisService sut;

  setUp(() {
    analysisRepository = MockAnalysisRepository();
    sut = AnalysisService(analysisRepository);
  });

  group('AnalysisService', () {
    test('empty data returns result with empty average speed', () {
      final data = <SpeedTime>[];
      const timePeriod = 10.0;

      final result = sut.getAverageSpeedForPeriod(data, timePeriod);

      expect(result.averageSpeed, isEmpty);
    });

    test(
        'data with only 1 item returns result with'
        ' average speed = data.first.averageSpeed', () {
      const speed = 10.0;
      final data = [
        const SpeedTime(speed: speed, time: 1, x: 1, y: 1),
      ];
      const timePeriod = 10.0;

      final result = sut.getAverageSpeedForPeriod(data, timePeriod);

      expect(result.averageSpeed.firstOrNull, speed);
    });
  });
}
