import 'package:flutter/material.dart';
import 'package:investmentmobileapp/pages/earning.dart';
import 'package:investmentmobileapp/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Poppins'),
        home: HomePage(),
        initialRoute: HomePage.id,
        onGenerateRoute: onGenerateRoute);
  }

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
        settings: settings,
        builder: (context) {
          switch (settings.name) {
            case EarningPage.id:
              return EarningPage();
            default:
              return HomePage();
          }
        });
  }
}
