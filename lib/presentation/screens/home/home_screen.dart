import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/screens/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: const Text('Home Screen'),
        ),
        body: const _HomeView(),
        drawer: SideMenu(
          scaffoldKey: scaffoldKey,
        ));
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
          onTap: () {
            context.push(menuItems.link);
          },
        );
      },
    );
  }
}
