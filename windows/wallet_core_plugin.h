#ifndef FLUTTER_PLUGIN_WALLET_CORE_PLUGIN_H_
#define FLUTTER_PLUGIN_WALLET_CORE_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace wallet_core {

class WalletCorePlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  WalletCorePlugin();

  virtual ~WalletCorePlugin();

  // Disallow copy and assign.
  WalletCorePlugin(const WalletCorePlugin&) = delete;
  WalletCorePlugin& operator=(const WalletCorePlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace wallet_core

#endif  // FLUTTER_PLUGIN_WALLET_CORE_PLUGIN_H_
