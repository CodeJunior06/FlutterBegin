import 'package:flutter/material.dart';

final _icons = <String, Icon>{
  'add_alert': Icon(Icons.add_alert),
  'accessibility': Icon(Icons.accessibility),
  'folder_open': Icon(Icons.folder_open)
};

Icon? getIcon(String nameIcon) {
  return _icons[nameIcon];
}
