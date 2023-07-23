import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../application/application.dart';
import '../widgets/widgets.dart';

class AnalysisScreen extends StatelessWidget {
  const AnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<AnalysisBloc>(),
      child: const Scaffold(
        appBar: _AppBar(),
        body: SafeArea(
          child: _Body(),
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text('Analysis'),
    );
  }
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
            const Center(
              child: Text('No file uploaded'),
            ),
            if (state.isLoading) const LoadingOverlay(),
          ],
        );
      },
    );
  }
}
