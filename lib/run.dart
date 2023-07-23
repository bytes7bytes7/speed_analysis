import 'package:flutter/material.dart';

import 'main/main.dart';

void run({required String env}) {
  configInjector(env: env);

  runApp(const App());
}
