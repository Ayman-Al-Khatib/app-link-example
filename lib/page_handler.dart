import 'package:app_link_example/app_navigator.dart';

/// Handles the navigation and display logic for different pages based on the URI.
class PageHandler {
  static String? page;

  static void handleUri(Uri? uri) {
    if (uri == null || uri.queryParameters.isEmpty) return;

    final String pageFromUri = uri.queryParameters['page'] ?? '';
    page = pageFromUri.isNotEmpty ? "/$pageFromUri" : null;

    if (pageFromUri == 'green') {
      AppNavigator.navigateTo('/green');
    } else if (pageFromUri == 'red') {
      AppNavigator.navigateTo('/red');
    } else {
      AppNavigator.navigateTo('/unknown');
    }
  }
}
