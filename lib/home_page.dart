import 'package:flutter/material.dart';
import 'package:app_link_example/app_navigator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                AppNavigator.navigateTo('/green');
              },
              child: const Text('Go to Green Page'),
            ),
            ElevatedButton(
              onPressed: () {
                AppNavigator.navigateTo('/red');
              },
              child: const Text('Go to Red Page'),
            ),
          ],
        ),
      ),
    );
  }
}
