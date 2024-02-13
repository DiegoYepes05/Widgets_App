import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SiliceInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SiliceInfo({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });
}

final slice = <SiliceInfo>[
  SiliceInfo(
    title: 'Buscar producto',
    caption: 'Do cillum dolore esse aliquip enim.',
    imageUrl: 'assets/Images/1.png',
  ),
  SiliceInfo(
    title: 'Producto enviado',
    caption: 'Officia est reprehenderit eiusmod Lorem ut.',
    imageUrl: 'assets/Images/2.png',
  ),
  SiliceInfo(
    title: 'Disfruta el pedido',
    caption: 'Dolor ut et velit aute sint dolor nulla elit ex eu.',
    imageUrl: 'assets/Images/3.png',
  ),
];

class AppTutorialScreen extends StatefulWidget {
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageViewController = PageController();
  bool onReached = false;

  @override
  void initState() {
    super.initState();

    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;

      if (!onReached && page >= (slice.length - 1.5)) {
        setState(() {
          onReached = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
              controller: pageViewController,
              children: slice
                  .map(
                    (sliceData) => _SliceView(
                      sliceData.title,
                      sliceData.caption,
                      sliceData.imageUrl,
                    ),
                  )
                  .toList()),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('Salir'),
            ),
          ),
          onReached
              ? Positioned(
                  bottom: 30,
                  right: 30,
                  child: FadeInRight(
                    from: 15,
                    delay: const Duration(seconds: 1),
                    child: FilledButton(
                      onPressed: () => context.pop(),
                      child: const Text('Comenzar'),
                    ),
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}

class _SliceView extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _SliceView(
    this.title,
    this.caption,
    this.imageUrl,
  );

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final bodyStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: titleStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              caption,
              style: bodyStyle,
            ),
          ],
        ),
      ),
    );
  }
}
