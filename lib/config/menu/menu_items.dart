import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final IconData icon;
  final String link;

  const MenuItems({
    required this.title,
    required this.subTitle,
    required this.icon,
    required this.link,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
      title: 'Buttons',
      subTitle: 'Buttons Flutter',
      icon: Icons.smart_button_outlined,
      link: '/buttons'),
  MenuItems(
      title: 'Cards',
      subTitle: 'Cards Flutter',
      icon: Icons.credit_card,
      link: '/cards'),
];