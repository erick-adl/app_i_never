import 'package:app_i_never/src/core/ioc/ioc.dart';

import 'package:app_i_never/src/features/presentation/ui/home.page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Ioc.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp() : super();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Localizations Sample App',
      home: HomePage(),
    );
  }
}
