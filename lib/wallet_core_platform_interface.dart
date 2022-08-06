import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'wallet_core_method_channel.dart';

abstract class WalletCorePlatform extends PlatformInterface {
  /// Constructs a WalletCorePlatform.
  WalletCorePlatform() : super(token: _token);

  static final Object _token = Object();

  static WalletCorePlatform _instance = MethodChannelWalletCore();

  /// The default instance of [WalletCorePlatform] to use.
  ///
  /// Defaults to [MethodChannelWalletCore].
  static WalletCorePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [WalletCorePlatform] when
  /// they register themselves.
  static set instance(WalletCorePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<int> getAddress();
}
