import '../value_objects/analysis_result/analysis_result.dart';

abstract class AnalysisRepository {
  const AnalysisRepository();

  Future<String> saveToFile(AnalysisResult result);
}
