import 'package:collection/collection.dart';
import 'package:mocktail/mocktail.dart';
import 'package:speed_analysis/features/analysis/domain/domain.dart';
import 'package:test/test.dart';

const _decimalAmount = 12;

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
      const timePeriod = 10;

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
      const timePeriod = 10;

      final result = sut.getAverageSpeedForPeriod(data, timePeriod);

      expect(result.averageSpeed.firstOrNull, speed);
    });

    test('data with 2 items (time gaps lass than time period)', () {
      final data = [
        const SpeedTime(speed: 10, time: 1, x: 1, y: 1),
        const SpeedTime(speed: 20, time: 1.5, x: 1, y: 1),
      ];
      const timePeriod = 10;

      final result = sut.getAverageSpeedForPeriod(data, timePeriod);

      expect(result.averageSpeed.firstOrNull, 15);
    });

    test(
        'data with >2 items (time gaps lass than time period)'
        ' returns average speed with 1 item', () {
      final data = [
        const SpeedTime(speed: 10, time: 1, x: 1, y: 1),
        const SpeedTime(speed: 20, time: 1.5, x: 1, y: 1),
        const SpeedTime(speed: 30, time: 2.5, x: 1, y: 1),
      ];
      const timePeriod = 10;

      final result = sut.getAverageSpeedForPeriod(data, timePeriod);

      expect(result.averageSpeed.length, 1);
    });

    test(
        'data with >2 items (time gaps lass than time period)'
        ' 1st item equals to 65/3', () {
      final data = [
        const SpeedTime(speed: 10, time: 1, x: 1, y: 1),
        const SpeedTime(speed: 20, time: 1.5, x: 1, y: 1),
        const SpeedTime(speed: 30, time: 2.5, x: 1, y: 1),
      ];
      const timePeriod = 10;

      final result = sut.getAverageSpeedForPeriod(data, timePeriod);

      expect(
        result.averageSpeed.firstOrNull?.toStringAsFixed(_decimalAmount),
        (65 / 3).toStringAsFixed(_decimalAmount),
      );
    });

    test(
        'data with >2 items (time gaps lass than'
        ' time period, >1 periods) return 1 item', () {
      final data = [
        const SpeedTime(speed: 10, time: 10, x: 1, y: 1),
        const SpeedTime(speed: 20, time: 15, x: 1, y: 1),
        const SpeedTime(speed: 30, time: 25, x: 1, y: 1),
        const SpeedTime(speed: 20, time: 35, x: 1, y: 1),
        const SpeedTime(speed: 10, time: 40, x: 1, y: 1),
      ];
      const timePeriod = 15;

      final result = sut.getAverageSpeedForPeriod(data, timePeriod);

      expect(result.averageSpeed.length, 2);
    });

    test(
        'data with >2 items (time gaps lass than'
        ' time period, >1 periods) first item equals to 65/3', () {
      final data = [
        const SpeedTime(speed: 10, time: 10, x: 1, y: 1),
        const SpeedTime(speed: 20, time: 15, x: 1, y: 1),
        const SpeedTime(speed: 30, time: 25, x: 1, y: 1),
        const SpeedTime(speed: 20, time: 35, x: 1, y: 1),
        const SpeedTime(speed: 10, time: 40, x: 1, y: 1),
      ];
      const timePeriod = 15;

      final result = sut.getAverageSpeedForPeriod(data, timePeriod);

      expect(
        result.averageSpeed[0].toStringAsFixed(_decimalAmount),
        (65 / 3).toStringAsFixed(_decimalAmount),
      );
    });

    test(
        'data with >2 items (time gaps lass than'
        ' time period, >1 periods) 2nd item equals to 65/3', () {
      final data = [
        const SpeedTime(speed: 10, time: 10, x: 1, y: 1),
        const SpeedTime(speed: 20, time: 15, x: 1, y: 1),
        const SpeedTime(speed: 30, time: 25, x: 1, y: 1),
        const SpeedTime(speed: 20, time: 35, x: 1, y: 1),
        const SpeedTime(speed: 10, time: 40, x: 1, y: 1),
      ];
      const timePeriod = 15;

      final result = sut.getAverageSpeedForPeriod(data, timePeriod);

      expect(
        result.averageSpeed[1].toStringAsFixed(_decimalAmount),
        (65 / 3).toStringAsFixed(_decimalAmount),
      );
    });

    test(
        'data with >2 items (time gaps lass than'
        ' time period, >1 periods, total time % timePeriod != 0)'
        ' return 2 items', () {
      final data = [
        const SpeedTime(speed: 10, time: 10, x: 1, y: 1),
        const SpeedTime(speed: 20, time: 15, x: 1, y: 1),
        const SpeedTime(speed: 30, time: 25, x: 1, y: 1),
        const SpeedTime(speed: 20, time: 35, x: 1, y: 1),
      ];
      const timePeriod = 15;

      final result = sut.getAverageSpeedForPeriod(data, timePeriod);

      expect(result.averageSpeed.length, 2);
    });

    test(
        'data with >2 items (time gaps lass than'
        ' time period, >1 periods, total time % timePeriod != 0)'
        ' 1st item equals to 65/3', () {
      final data = [
        const SpeedTime(speed: 10, time: 10, x: 1, y: 1),
        const SpeedTime(speed: 20, time: 15, x: 1, y: 1),
        const SpeedTime(speed: 30, time: 25, x: 1, y: 1),
        const SpeedTime(speed: 20, time: 35, x: 1, y: 1),
      ];
      const timePeriod = 15;

      final result = sut.getAverageSpeedForPeriod(data, timePeriod);

      expect(
        result.averageSpeed[0].toStringAsFixed(_decimalAmount),
        (65 / 3).toStringAsFixed(_decimalAmount),
      );
    });

    test(
        'data with >2 items (time gaps lass than'
        ' time period, >1 periods, total time % timePeriod != 0)'
        ' 2nd item equals to 25', () {
      final data = [
        const SpeedTime(speed: 10, time: 10, x: 1, y: 1),
        const SpeedTime(speed: 20, time: 15, x: 1, y: 1),
        const SpeedTime(speed: 30, time: 25, x: 1, y: 1),
        const SpeedTime(speed: 20, time: 35, x: 1, y: 1),
      ];
      const timePeriod = 15;

      final result = sut.getAverageSpeedForPeriod(data, timePeriod);

      expect(result.averageSpeed[1], 25);
    });

    test(
        'data with >2 items (time gaps lass than'
        ' time period, >1 periods, one period belongs to 2 time periods)'
        ' return 2 items', () {
      final data = [
        const SpeedTime(speed: 10, time: 10, x: 1, y: 1),
        const SpeedTime(speed: 20, time: 15, x: 1, y: 1),
        const SpeedTime(speed: 30, time: 30, x: 1, y: 1),
        const SpeedTime(speed: 20, time: 35, x: 1, y: 1),
      ];
      const timePeriod = 15;

      final result = sut.getAverageSpeedForPeriod(data, timePeriod);

      expect(result.averageSpeed.length, 2);
    });

    test(
        'data with >2 items (time gaps lass than'
        ' time period, >1 periods, one period belongs to 2 time periods)'
        '1st item equals to 185/9', () {
      final data = [
        const SpeedTime(speed: 10, time: 10, x: 1, y: 1),
        const SpeedTime(speed: 20, time: 15, x: 1, y: 1),
        const SpeedTime(speed: 30, time: 30, x: 1, y: 1),
        const SpeedTime(speed: 20, time: 35, x: 1, y: 1),
      ];
      const timePeriod = 15;

      final result = sut.getAverageSpeedForPeriod(data, timePeriod);

      expect(
        result.averageSpeed[0].toStringAsFixed(_decimalAmount),
        (185 / 9).toStringAsFixed(_decimalAmount),
      );
    });

    test(
        'data with >2 items (time gaps lass than'
        ' time period, >1 periods, one period belongs to 2 time periods)'
        '2nd item equals to 80/3', () {
      final data = [
        const SpeedTime(speed: 10, time: 10, x: 1, y: 1),
        const SpeedTime(speed: 20, time: 15, x: 1, y: 1),
        const SpeedTime(speed: 30, time: 30, x: 1, y: 1),
        const SpeedTime(speed: 20, time: 35, x: 1, y: 1),
      ];
      const timePeriod = 15;

      final result = sut.getAverageSpeedForPeriod(data, timePeriod);

      expect(
        result.averageSpeed[1].toStringAsFixed(_decimalAmount),
        (80 / 3).toStringAsFixed(_decimalAmount),
      );
    });

    test(
        'data with >2 items (time gaps lass than'
        ' time period, >1 periods, total time % timePeriod != 0)'
        ' some periods belong to 2 time periods,'
        ' last period is in result', () {
      final data = [
        const SpeedTime(speed: 10, time: 10, x: 1, y: 1),
        const SpeedTime(speed: 20, time: 15, x: 1, y: 1),
        const SpeedTime(speed: 30, time: 30, x: 1, y: 1),
        const SpeedTime(speed: 20, time: 32, x: 1, y: 1),
      ];
      const timePeriod = 15;

      final result = sut.getAverageSpeedForPeriod(data, timePeriod);

      expect(result.averageSpeed.length, 2);
    });
  });
}
