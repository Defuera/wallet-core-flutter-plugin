import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'wallet_core_platform_interface.dart';

/// An implementation of [WalletCorePlatform] that uses method channels.
class MethodChannelWalletCore extends WalletCorePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('wallet_core');


  @override
  Future<int> getAddress() async {

    return 0;
  }
}
