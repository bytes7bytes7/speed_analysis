import 'package:injectable/injectable.dart';

import '../../../../utils/mapper.dart';
import '../../domain/value_objects/analysis_result/analysis_result.dart';
import '../view_models/analysis_result_vm/analysis_result_vm.dart';

@Injectable(as: Mapper<AnalysisResult, AnalysisResultVM>)
class AnalysisResultToAnalysisResultVMMapper
    extends Mapper<AnalysisResult, AnalysisResultVM> {
  const AnalysisResultToAnalysisResultVMMapper();

  @override
  AnalysisResultVM map(AnalysisResult item) {
    return AnalysisResultVM(
      timePeriod: item.timePeriod.toString(),
      averageSpeed: item.averageSpeed.map((e) => e.toString()).toList(),
      totalTime: item.totalTime.toString(),
      percentOfAverageSpeed: item.percentOfAverageSpeed.map(
        (key, value) => MapEntry(
          key.toString(),
          value.toString(),
        ),
      ),
    );
  }
}
