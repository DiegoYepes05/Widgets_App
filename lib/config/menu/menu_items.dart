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
    link: '/buttons',
  ),
  MenuItems(
    title: 'Cards',
    subTitle: 'Cards Flutter',
    icon: Icons.credit_card,
    link: '/cards',
  ),
  MenuItems(
    title: 'Progress',
    subTitle: 'Progress indicators Flutter',
    icon: Icons.refresh_rounded,
    link: '/progress',
  ),
  MenuItems(
    title: 'Snackbar y dialogos',
    subTitle: 'Snackbar y dialogos Flutter',
    icon: Icons.info_outline,
    link: '/snackbars',
  ),
  MenuItems(
    title: 'animated container',
    subTitle: 'Animated container Flutter',
    icon: Icons.check_box_outline_blank_rounded,
    link: '/animated',
  ),
  MenuItems(
    title: 'UI Controls',
    subTitle: 'Ui Controls Flutter',
    icon: Icons.car_rental_outlined,
    link: '/ui-contorls',
  ),
  MenuItems(
    title: 'Tutorial',
    subTitle: 'App tutorial Flutter',
    icon: Icons.tungsten_rounded,
    link: '/tutorial',
  ),
  MenuItems(
    title: 'Infinite scroll',
    subTitle: 'Infinte scroll Flutter',
    icon: Icons.sync_rounded,
    link: '/infinite',
  ),
];
