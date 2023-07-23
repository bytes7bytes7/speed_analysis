import 'dart:convert';

import 'package:csv/csv.dart';
import 'package:file_picker/file_picker.dart';
import 'package:injectable/injectable.dart';

import '../dto/speed_time_dto.dart';

@lazySingleton
class FileDataSource {
  const FileDataSource();

  Future<List<SpeedTimeDTO>?> pickCsvFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['csv'],
      allowMultiple: false,
    );

    if (result == null) {
      return null;
    }

    final list = await result.files.first.readStream
        ?.transform(utf8.decoder)
        .transform(const CsvToListConverter())
        .toList();

    return list?.map(SpeedTimeDTO.fromList).toList();
  }
}
