import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/domain.dart';

part 'analysis_event.dart';

part 'analysis_state.dart';

part 'analysis_bloc.freezed.dart';

@injectable
class AnalysisBloc extends Bloc<AnalysisEvent, AnalysisState> {
  AnalysisBloc(
    this._speedTimeService,
  ) : super(const AnalysisState()) {
    on<_PickFileEvent>(_pickFile);
  }

  final SpeedTimeService _speedTimeService;

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

      // TODO:
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }
}
