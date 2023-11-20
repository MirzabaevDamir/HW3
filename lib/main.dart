import 'package:flutter/material.dart';
import 'package:my_project/pages/router/app_routes.dart';

void main() async {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.main,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
