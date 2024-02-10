import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  void customSnackbar(BuildContext context) {
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

  void opebDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          'Alert Dialog',
        ),
        content: const Text(
          'Incididunt aliqua sunt aliquip adipisicing et. Esse ad ullamco sit commodo cillum ut in ipsum enim aliquip proident voluptate occaecat ex. Ut dolore commodo nulla voluptate aliquip incididunt ullamco nulla eiusmod ut deserunt sint. Do non deserunt deserunt cupidatat occaecat ad aliqua. Veniam pariatur ipsum irure tempor aute fugiat incididunt excepteur minim cupidatat esse anim incididunt ad. Cillum ut aliqua non laborum fugiat duis id labore labore dolore ex. Cillum nostrud eu culpa nostrud.',
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: const Text('Cancel'),
          ),
          FilledButton.tonal(onPressed: () {}, child: const Text('Ok'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar y dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                    'Nisi est nostrud veniam laboris. Pariatur labore tempor ad aute sint minim nostrud sint veniam culpa anim consectetur dolore. Eiusmod aute culpa et sint sint ullamco consequat ex excepteur do ipsum. Adipisicing dolor enim sit incididunt labore. Incididunt ut enim ullamco pariatur culpa. Exercitation excepteur id adipisicing fugiat esse nostrud laborum.',
                  )
                ]);
              },
              child: const Text('Show licenses'),
            ),
            FilledButton.tonal(
              onPressed: () => opebDialog(context),
              child: const Text('Show dialog'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => customSnackbar(context),
        icon: const Icon(Icons.remove_red_eye_outlined),
        label: const Text('Show snackbar'),
      ),
    );
  }
}
