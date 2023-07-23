import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';

import 'package:injectable/injectable.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

import '../../domain/repositories/analysis_repository.dart';
import '../data_sources/file_data_source.dart';

// @prod
@dev
@LazySingleton(as: AnalysisRepository)
class DevAnalysisRepository implements AnalysisRepository {
  const DevAnalysisRepository();

  @override
  Future<String?> saveToFile(List<Uint8List> images, String fileName) {
    return Future.delayed(const Duration(seconds: 2), () => 'filename.pdf');
  }
}

@prod
@LazySingleton(as: AnalysisRepository)
class ProdAnalysisRepository implements AnalysisRepository {
  const ProdAnalysisRepository(this._fileDataSource);

  final FileDataSource _fileDataSource;

  @override
  Future<String?> saveToFile(List<Uint8List> images, String fileName) async {
    if (images.isEmpty) {
      return null;
    }

    final document = PdfDocument();

    final allHeight = <double>[];
    final allWidth = <double>[];

    var maxWidth = 0.0;
    var totalHeight = 0.0;
    for (final image in images) {
      final bitmap = PdfBitmap(image);
      final width = bitmap.width.toDouble();
      final height = bitmap.height.toDouble();

      maxWidth = max(maxWidth, width);
      totalHeight += height;

      allWidth.add(width);
      allHeight.add(height);
    }

    document.pageSettings.size = Size(maxWidth, totalHeight);

    final page = document.pages.add();
    final pageSize = page.getClientSize();

    var prevT = 0.0;
    for (var i = 0; i < images.length; i++) {
      final image = images[i];

      final bitmap = PdfBitmap(image);

      final heightFactor = allHeight[i] / totalHeight;
      final height = pageSize.height * heightFactor;

      final widthFactor = allWidth[i] / maxWidth;
      final width = pageSize.width * widthFactor;

      page.graphics.drawImage(
        bitmap,
        Rect.fromLTWH(
          0,
          prevT,
          width,
          height,
        ),
      );

      prevT += height;
    }

    final bytes = document.saveSync();
    document.dispose();

    return _fileDataSource.saveFile(bytes, fileName);
  }
}
