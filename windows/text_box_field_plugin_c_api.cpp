#include "include/text_box_field/text_box_field_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "text_box_field_plugin.h"

void TextBoxFieldPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  text_box_field::TextBoxFieldPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
