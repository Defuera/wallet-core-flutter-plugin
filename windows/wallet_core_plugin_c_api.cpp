#include "include/wallet_core/wallet_core_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "wallet_core_plugin.h"

void WalletCorePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  wallet_core::WalletCorePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
