import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/domain.dart';

part 'analysis_event.dart';

part 'analysis_state.dart';

part 'analysis_bloc.freezed.dart';

const _timePeriodsInMin = [
  5,
  10,
];

@injectable
class AnalysisBloc extends Bloc<AnalysisEvent, AnalysisState> {
  AnalysisBloc(
    this._speedTimeService,
    this._analysisService,
  ) : super(const AnalysisState()) {
    on<_PickFileEvent>(_pickFile);
  }

  final SpeedTimeService _speedTimeService;
  final AnalysisService _analysisService;

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

      final timePeriod = _minutesToSeconds(_timePeriodsInMin.first);
      final result =
          _analysisService.getAverageSpeedForPeriod(dataOrNull, timePeriod);

      emit(
        state.copyWith(
          result: result,
          timePeriod: _secondsToMinutes(result.timePeriod),
          timePeriodsInMin: _timePeriodsInMin,
        ),
      );
    } catch (e) {
      emit(state.copyWith(error: 'Error'));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }
}

double _secondsToMinutes(num s) => s / 60;

int _minutesToSeconds(int m) => m * 60;
