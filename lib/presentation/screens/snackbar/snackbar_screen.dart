import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  void showSnachbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(
        label: 'Ok',
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Dialog'),
        content: const Text(
          'Ut magna nostrud labore dolore magna velit non elit officia in ullamco laborum. Enim esse labore adipisicing non. Enim velit commodo quis deserunt cillum in ullamco exercitation anim est. Velit consequat culpa incididunt Lorem mollit mollit magna excepteur labore ea enim excepteur enim fugiat. Reprehenderit aute ex occaecat sit ipsum duis sit est.',
        ),
        actions: [
          TextButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('Cancel')),
          FilledButton.tonal(onPressed: () {}, child: const Text('Ok'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Snackbar + Dialog',
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
            onPressed: () {
              showAboutDialog(context: context, children: [
                const Text(
                  'Minim laboris dolore culpa culpa veniam veniam sint ullamco irure sit. Irure ad adipisicing sint laboris fugiat. Adipisicing amet consequat consequat qui occaecat. Minim sint enim nulla laboris.',
                ),
              ]);
            },
            child: const Text('Show licenses'),
          ),
          FilledButton.tonal(
            onPressed: () => openDialog(context),
            child: const Text('Show Dialog'),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showSnachbar(context),
        child: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
