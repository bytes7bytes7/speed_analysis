import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../utils/mapper.dart';
import '../../../domain/domain.dart';
import '../../view_models/view_models.dart';

part 'analysis_event.dart';

part 'analysis_state.dart';

part 'analysis_bloc.freezed.dart';

const _minuteSuffix = 'm';
const _timePeriods = [
  5 * 60,
  5 * 10,
];

@injectable
class AnalysisBloc extends Bloc<AnalysisEvent, AnalysisState> {
  AnalysisBloc(
    this._speedTimeService,
    this._analysisService,
    this._analysisResultToAnalysisResultVMMapper,
  ) : super(const AnalysisState()) {
    on<_PickFileEvent>(_pickFile);
  }

  final SpeedTimeService _speedTimeService;
  final AnalysisService _analysisService;
  final Mapper<AnalysisResult, AnalysisResultVM>
      _analysisResultToAnalysisResultVMMapper;

  Future<void> _pickFile(
    _PickFileEvent event,
    Emitter<AnalysisState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    try {
      final dataOrNull = await _speedTimeService.fetchDataFromFile();
      if (dataOrNull == null) {
        return;
      }

      final timePeriod = _timePeriods.first.toDouble();
      final result =
          _analysisService.getAverageSpeedForPeriod(dataOrNull, timePeriod);
      final resultVM = _analysisResultToAnalysisResultVMMapper.map(result);

      emit(
        state.copyWith(
          result: resultVM,
        ),
      );
    } catch (e) {
      emit(state.copyWith(error: 'Error'));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }
}

int _parseTimePeriod(String formattedString) {
  final number = formattedString.replaceFirst(_minuteSuffix, '');

  return int.parse(number);
}

String _formatTimePeriod(int seconds) {
  return '$seconds$_minuteSuffix';
}
