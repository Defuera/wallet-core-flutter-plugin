// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html show window;

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'wallet_core_platform_interface.dart';

/// A web implementation of the WalletCorePlatform of the WalletCore plugin.
class WalletCoreWeb extends WalletCorePlatform {
  /// Constructs a WalletCoreWeb
  WalletCoreWeb();

  static void registerWith(Registrar registrar) {
    WalletCorePlatform.instance = WalletCoreWeb();
  }

  @override
  Future<int> getAddress() {
    throw UnimplementedError();
  }
}
