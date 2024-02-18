import 'package:flutter/material.dart';
import 'package:tr_store/data/database/helper/db_instance.dart';
import 'package:tr_store/presentation/app.dart';

import 'injection.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  productDatabase;
  runApp(const App());
}
