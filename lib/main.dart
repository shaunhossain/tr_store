import 'package:flutter/material.dart';
import 'package:tr_store/presentation/app.dart';

import 'injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const App());
}
