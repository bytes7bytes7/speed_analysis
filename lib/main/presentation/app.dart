import 'package:flutter/material.dart';

import '../../features/features.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Speed Analysis',
      debugShowCheckedModeBanner: false,
      home: AnalysisScreen(),
    );
  }
}
