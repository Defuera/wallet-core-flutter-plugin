#import "WalletCorePlugin.h"
#if __has_include(<wallet_core/wallet_core-Swift.h>)
#import <wallet_core/wallet_core-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "wallet_core-Swift.h"
#endif

@implementation WalletCorePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftWalletCorePlugin registerWithRegistrar:registrar];
}
@end
