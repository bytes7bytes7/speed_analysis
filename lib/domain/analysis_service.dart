import 'analysis_repository.dart';
import 'analysis_result.dart';
import 'speed_time.dart';

class AnalysisService {
  const AnalysisService(this._analysisRepository);

  final AnalysisRepository _analysisRepository;

  AnalysisResult getAverageSpeedForPeriod(
    List<SpeedTime> data,
    double timePeriod,
  ) {
    if (data.isEmpty) {
      return AnalysisResult(
        timePeriod: timePeriod,
        averageSpeed: [],
      );
    }

    if (data.length == 1) {
      return AnalysisResult(
        timePeriod: timePeriod,
        averageSpeed: [data.first.speed],
      );
    }

    final averageSpeed = <double>[];

    var currS = 0.0;
    var currT = 0.0;
    for (var i = 1; i < data.length; i++) {
      final prev = data[i - 1];
      final curr = data[i];

      final v0 = prev.speed;
      final v1 = curr.speed;
      final dt = curr.time - prev.time;

      final a = (v1 - v0) / dt;
      if (currT + dt > timePeriod) {
        final totalT = currT + dt;
        final nextT = totalT - timePeriod;
        final thisT = dt - nextT;

        final s = v0 * thisT + a * thisT * thisT / 2;
        currS += s;
        currT += thisT;

        final aV = currS / currT;
        averageSpeed.add(aV);

        currS = v0 * nextT + a * nextT * nextT / 2;
        currT = nextT;
      } else {
        final s = v0 * dt + a * dt * dt / 2;
        currS += s;
        currT += dt;
      }
    }

    if (currT > 0) {
      final aV = currS / currT;
      averageSpeed.add(aV);
    }

    return AnalysisResult(
      timePeriod: timePeriod,
      averageSpeed: averageSpeed,
    );
  }

  Future<String> saveResult(AnalysisResult result) {
    return _analysisRepository.saveToFile(result);
  }
}
