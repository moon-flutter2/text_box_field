//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <text_box_field/text_box_field_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) text_box_field_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "TextBoxFieldPlugin");
  text_box_field_plugin_register_with_registrar(text_box_field_registrar);
}
