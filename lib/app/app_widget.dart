import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'core/shared/contants.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'Conversor de moeda',
      theme: ThemeData(
          primaryColor: Consts.primary,
          brightness: Brightness.dark,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Consts.primary,
          )),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
