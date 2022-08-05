
import 'wallet_core_platform_interface.dart';

class WalletCore {
  Future<String?> getPlatformVersion() {
    return WalletCorePlatform.instance.getPlatformVersion();
  }
}
