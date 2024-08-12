import 'package:flutter/material.dart';
import 'package:app_link_example/app_navigator.dart';
import 'package:app_link_example/links_services.dart';
import 'package:app_link_example/page_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LinkService.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App Links',
      navigatorKey: AppNavigator.navigatorKey,
      initialRoute: PageHandler.page ?? '/',
      onGenerateRoute: AppNavigator.generateRoute,
    );
  }
}
