import 'dart:typed_data';

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
const _pdfFileName = 'speed_test_result.pdf';

@injectable
class AnalysisBloc extends Bloc<AnalysisEvent, AnalysisState> {
  AnalysisBloc(
    this._speedTimeService,
    this._analysisService,
  ) : super(const AnalysisState()) {
    on<_PickFileEvent>(_pickFile);
    on<_DoAnalysisEvent>(_doAnalysis);
    on<_SetTimePeriodEvent>(_setTimePeriod);
    on<_ClearEvent>(_clear);
    on<_ExportEvent>(_export);
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

      final timePeriod = _timePeriodsInMin.first;

      emit(
        state.copyWith(
          data: dataOrNull,
          timePeriod: state.timePeriod ?? timePeriod,
          timePeriodsInMin: _timePeriodsInMin,
        ),
      );

      add(const AnalysisEvent.doAnalysis());
    } catch (e) {
      emit(state.copyWith(info: 'An error occurs during reading file'));
      emit(state.copyWith(info: ''));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  void _doAnalysis(
    _DoAnalysisEvent event,
    Emitter<AnalysisState> emit,
  ) {
    final timePeriod = state.timePeriod;
    if (timePeriod == null) {
      return;
    }

    final result = _analysisService.getAverageSpeedForPeriod(
      state.data,
      _minutesToSeconds(timePeriod),
    );

    emit(
      state.copyWith(
        result: result,
      ),
    );
  }

  void _setTimePeriod(
    _SetTimePeriodEvent event,
    Emitter<AnalysisState> emit,
  ) {
    emit(state.copyWith(timePeriod: event.period));

    add(const AnalysisEvent.doAnalysis());
  }

  void _clear(
    _ClearEvent event,
    Emitter<AnalysisState> emit,
  ) {
    emit(const AnalysisState());
  }

  Future<void> _export(
    _ExportEvent event,
    Emitter<AnalysisState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    try {
      final fileName = await _analysisService.saveResult(
        [event.speedChatImage, event.percentCharImage],
        _pdfFileName,
      );

      if (fileName != null) {
        emit(state.copyWith(info: 'Exported to file: $fileName'));
        emit(state.copyWith(info: ''));
      }
    } catch (e) {
      emit(state.copyWith(info: 'An error occurs during exporting'));
      emit(state.copyWith(info: ''));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }
}

int _minutesToSeconds(int m) => m * 60;
