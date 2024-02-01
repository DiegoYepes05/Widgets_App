import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (BuildContext context, int index) {
        final menuItems = appMenuItems[index];
        return ListTile(
          leading: Icon(
            menuItems.icon,
            color: theme.primary,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            color: theme.primary,
          ),
          title: Text(menuItems.title),
          subtitle: Text(menuItems.subTitle),
        );
      },
    );
  }
}
