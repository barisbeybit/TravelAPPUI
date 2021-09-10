import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'homeScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TravelAppUI',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: TravelAppUI());
  }
}
