import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/domain.dart';

part 'analysis_event.dart';

part 'analysis_state.dart';

part 'analysis_bloc.freezed.dart';

final logoImage = base64.decode('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');
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

    // for loading appears
    await Future.delayed(const Duration(seconds: 1));

    try {
      final fileName = await _analysisService.saveResult(
        [event.logo, event.speedChatImage, event.percentCharImage],
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
