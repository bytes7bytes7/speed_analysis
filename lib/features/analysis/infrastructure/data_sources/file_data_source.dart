import 'dart:convert';
import 'dart:io';

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

    final bytes = File(result.files.first.path!).readAsBytesSync();
    var string = utf8.decode(bytes);
    if (int.tryParse(string.substring(0, 1)) == null) {
      string = string.substring(string.indexOf('\n') + 1);
    }

    final csv =
        const CsvToListConverter().convert(string.replaceAll('\n', '\r\n'));

    return csv.map(SpeedTimeDTO.fromList).toList();
  }

  Future<String?> saveFile(List<int> bytes, String fileName) async {
    final path = await FilePicker.platform.saveFile(
      dialogTitle: 'Choose location',
      fileName: fileName,
    );

    if (path == null) {
      return null;
    }

    File(path).writeAsBytesSync(bytes);

    return path;
  }
}
