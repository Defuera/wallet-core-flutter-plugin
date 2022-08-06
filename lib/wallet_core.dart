import 'dart:io';
import 'dart:ffi' as ffi;

typedef GetAddressFunction = ffi.Double Function();
typedef GetAddressFunctionDart = double Function();

class WalletCore {
  WalletCore() {
    final dl = Platform.isAndroid ? ffi.DynamicLibrary.open('libwallet_core.so') : ffi.DynamicLibrary.process();
    _getAddress = dl.lookupFunction<GetAddressFunction, GetAddressFunctionDart>('get_address');
  }

  late GetAddressFunctionDart _getAddress;

  double getAddress() => _getAddress();
}
