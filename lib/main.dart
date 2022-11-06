import 'package:flutter/material.dart';
import 'package:projectart/page/home_page.dart';
import 'package:projectart/page/photo_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.route,
      onGenerateRoute: (settings) {
        final routes = {
          HomePage.route: (_) => HomePage(),
          PhotoDetailsPage.route: (_) =>
              PhotoDetailsPage(args: settings.arguments as PhotoDetailPageArg),
        };
        return MaterialPageRoute(builder: routes[settings.name]!);
      },
    );
  }
}
