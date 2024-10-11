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
    return Wrap(crossAxisAlignment: WrapCrossAlignment.center, children: [
      ...appMenuItems.map((item) => GestureDetector(
            onTap: () => context.push(item.link),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  color: theme.primary,
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(
                      item.icon,
                      color: Colors.white,
                    ),
                    Text(
                      item.title,
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(item.subTitle,
                        style: const TextStyle(color: Colors.white))
                  ],
                ),
              ),
            ),
          ))
    ]);
  }
}
