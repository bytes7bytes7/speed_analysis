import 'dart:typed_data';

abstract class AnalysisRepository {
  const AnalysisRepository();

  Future<String?> saveToFile(List<Uint8List> images, String fileName);
}
