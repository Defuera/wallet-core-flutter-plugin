import 'dart:io';
import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';

typedef GetAddressFunction = ffi.Pointer<Utf8> Function();
typedef GetAddressFunctionDart = ffi.Pointer<Utf8> Function();

class WalletCore {
  WalletCore() {
    final dl = Platform.isAndroid
        ? ffi.DynamicLibrary.open('libwallet_core.so')
        : ffi.DynamicLibrary.process();
    _getAddress = dl.lookupFunction<GetAddressFunction, GetAddressFunctionDart>(
      'get_address',
    );
  }

  late GetAddressFunctionDart _getAddress;

  String getAddress() {
    final ptr = _getAddress();
    final forecast = ptr.toDartString();
    calloc.free(ptr);
    return forecast;
  }
}
