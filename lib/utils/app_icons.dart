import 'package:flutter/material.dart';

List<Map<String, dynamic>> appIcons = [
  {
    'icon': Icons.access_alarm,
    'name': 'access_alarm',
    'codePoint': Icons.access_alarm.codePoint,
  },
  {
    'icon': Icons.account_balance,
    'name': 'account_balance',
    'codePoint': Icons.account_balance.codePoint,
  },
  {
    'icon': Icons.account_box,
    'name': 'account_box',
    'codePoint': Icons.account_box.codePoint,
  },
  {
    'icon': Icons.add_shopping_cart,
    'name': 'add_shopping_cart',
    'codePoint': Icons.add_shopping_cart.codePoint,
  },
];

IconData getIconByName(String name) {
  return appIcons.firstWhere((icon) => icon['name'] == name)['icon'];
}
