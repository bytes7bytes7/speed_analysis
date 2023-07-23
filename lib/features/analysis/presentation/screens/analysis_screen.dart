import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../application/application.dart';
import '../widgets/widgets.dart';

class AnalysisScreen extends StatelessWidget {
  const AnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<AnalysisBloc>(),
      child: const _Scaffold(),
    );
  }
}

class _Scaffold extends StatelessWidget {
  const _Scaffold();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AnalysisBloc>();

    return Scaffold(
      appBar: _AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: BlocBuilder<AnalysisBloc, AnalysisState>(
              builder: (context, state) {
                return Row(
                  children: state.timePeriodsInMin.map((e) {
                    return Expanded(
                      child: ChoiceChip(
                        label: Text(_formatMin(e)),
                        selected: state.timePeriod == e,
                        onSelected: (v) {
                          bloc.add(AnalysisEvent.setTimePeriod(period: e));
                        },
                      ),
                    );
                  }).toList(),
                );
              },
            ),
          ),
        ),
      ),
      body: const SafeArea(
        child: _Body(),
      ),
    );
  }

  String _formatMin(int m) => '$m min';
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  _AppBar({
    this.bottom,
  }) : preferredSize =
            _PreferredAppBarSize(kToolbarHeight, bottom?.preferredSize.height);

  final PreferredSizeWidget? bottom;

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AnalysisBloc>();

    return BlocBuilder<AnalysisBloc, AnalysisState>(
      builder: (context, state) {
        return AppBar(
          leading: state.hasResult
              ? IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => bloc.add(const AnalysisEvent.clear()),
                )
              : null,
          centerTitle: true,
          title: const Text('Analysis'),
          actions: [
            if (state.hasResult)
              IconButton(
                icon: Icon(state.showPercent ? Icons.speed : Icons.percent),
                onPressed: () =>
                    bloc.add(const AnalysisEvent.switchShowPercent()),
              ),
          ],
          bottom: bottom,
        );
      },
    );
  }
}

class _PreferredAppBarSize extends Size {
  const _PreferredAppBarSize(this.toolbarHeight, this.bottomHeight)
      : super.fromHeight(
          (toolbarHeight ?? kToolbarHeight) + (bottomHeight ?? 0),
        );

  final double? toolbarHeight;
  final double? bottomHeight;
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final scaffoldMsg = ScaffoldMessenger.of(context);

    return BlocConsumer<AnalysisBloc, AnalysisState>(
      listener: (context, state) {
        if (state.error.isNotEmpty) {
          scaffoldMsg
            ..clearSnackBars()
            ..showSnackBar(
              SnackBar(content: Text(state.error)),
            );
        }
      },
      builder: (context, state) {
        return Stack(
          children: [
            const _DataBody(),
            if (state.isLoading) const LoadingOverlay(),
          ],
        );
      },
    );
  }
}

class _DataBody extends StatelessWidget {
  const _DataBody();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AnalysisBloc>();

    return BlocBuilder<AnalysisBloc, AnalysisState>(
      builder: (context, state) {
        if (!state.hasResult) {
          return Center(
            child: ElevatedButton(
              onPressed: () => bloc.add(const AnalysisEvent.getDataFromFile()),
              child: const Text('Upload file'),
            ),
          );
        }

        final result = state.result;
        final period = state.timePeriod;
        if (result == null || period == null) {
          return const SizedBox.shrink();
        }

        if (state.showPercent) {
          return Center(
            child: SfCartesianChart(
              primaryXAxis: CategoryAxis(
                title: AxisTitle(
                  text: 'Speed (m/s)',
                  alignment: ChartAlignment.far,
                ),
              ),
              primaryYAxis: NumericAxis(
                title: AxisTitle(
                  text: 'Percent (%)',
                  alignment: ChartAlignment.far,
                ),
              ),
              series: [
                ColumnSeries(
                  dataSource: [
                    ...result.percentOfAverageSpeed.entries,
                  ],
                  xValueMapper: (e, i) => e.key.toStringAsFixed(1),
                  yValueMapper: (e, i) => e.value,
                ),
              ],
            ),
          );
        }

        var averageSpeed = <double>[];
        if (result.averageSpeed.isNotEmpty) {
          // just because library draws each bar for each value, not for value range
          averageSpeed = [...result.averageSpeed, result.averageSpeed.last];
        }

        return Center(
          child: SfCartesianChart(
            primaryXAxis: NumericAxis(
              interval: period.toDouble(),
              title: AxisTitle(
                text: 'Time (min)',
                alignment: ChartAlignment.far,
              ),
            ),
            primaryYAxis: NumericAxis(
              title: AxisTitle(
                text: 'Speed (m/s)',
                alignment: ChartAlignment.far,
              ),
            ),
            series: [
              StepAreaSeries(
                dataSource: averageSpeed,
                xValueMapper: (e, i) => i * period,
                yValueMapper: (e, i) => e,
              ),
            ],
          ),
        );
      },
    );
  }
}
