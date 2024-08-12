import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:app_links/app_links.dart';
import 'package:app_link_example/page_handler.dart';

/// Initializes and listens for URI links.
class LinkService {
  static final AppLinks _appLinks = AppLinks();

  static Future<void> initialize() async {
    try {
      final Uri? initialUri = await _appLinks.getInitialLink();
      PageHandler.handleUri(initialUri);
    } on PlatformException {
      log('Failed to receive the initial URI');
    } on FormatException {
      log('Received URI was in the wrong format');
    }

    _appLinks.uriLinkStream.listen((Uri? uri) {
      PageHandler.handleUri(uri);
    }, onError: (error) {
      log('AppLinks Error: $error');
    });
  }
}
