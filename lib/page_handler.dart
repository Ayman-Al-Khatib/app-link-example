/// Handles the navigation and display logic for different pages based on the URI.
class PageHandler {
  static String? page;

  static void handleUri(Uri? uri) {
    if (uri == null || uri.queryParameters.isEmpty) return;

    final String pageFromUri = uri.queryParameters['page'] ?? '';

    if (pageFromUri == 'green') {
      page = "/green";
    } else if (pageFromUri == 'red') {
      page = "/red";
    } else {
      page = "/unknown";
    }
  }
}
