import 'package:injectable/injectable.dart';

import '../../domain/repositories/analysis_repository.dart';
import '../../domain/value_objects/analysis_result/analysis_result.dart';

@prod
@dev
@LazySingleton(as: AnalysisRepository)
class DevAnalysisRepository implements AnalysisRepository {
  const DevAnalysisRepository();

  @override
  Future<String> saveToFile(AnalysisResult result) {
    return Future.delayed(const Duration(seconds: 2), () => 'filename.pdf');
  }
}
