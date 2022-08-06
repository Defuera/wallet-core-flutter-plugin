// import 'package:flutter_test/flutter_test.dart';
// import 'package:wallet_core/wallet_core.dart';
// import 'package:wallet_core/wallet_core_platform_interface.dart';
// import 'package:wallet_core/wallet_core_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';
//
// class MockWalletCorePlatform
//     with MockPlatformInterfaceMixin
//     implements WalletCorePlatform {
//
//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }
//
// void main() {
//   final WalletCorePlatform initialPlatform = WalletCorePlatform.instance;
//
//   test('$MethodChannelWalletCore is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelWalletCore>());
//   });
//
//   test('getPlatformVersion', () async {
//     WalletCore walletCorePlugin = WalletCore();
//     MockWalletCorePlatform fakePlatform = MockWalletCorePlatform();
//     WalletCorePlatform.instance = fakePlatform;
//
//     expect(await walletCorePlugin.getPlatformVersion(), '42');
//   });
// }
