import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress indicators'),
      ),
      body: const _ProgresView(),
    );
  }
}

class _ProgresView extends StatelessWidget {
  const _ProgresView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Text('Progress indicators'),
          SizedBox(
            height: 10,
          ),
          CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: Colors.black45,
          ),
          SizedBox(
            height: 20,
          ),
          Text('Progress indicators controlado'),
          SizedBox(
            height: 10,
          ),
          _ControlledProgresIndicators()
        ],
      ),
    );
  }
}

class _ControlledProgresIndicators extends StatelessWidget {
  const _ControlledProgresIndicators();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<double>(
        stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
          return (value * 2) / 100;
        }).takeWhile((value) => value < 100),
        builder: (context, snapshot) {
          final streamProgress = snapshot.data ?? 0;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  value: streamProgress,
                  strokeWidth: 2,
                  backgroundColor: Colors.black26,
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: LinearProgressIndicator(
                  value: streamProgress,
                )),
              ],
            ),
          );
        });
  }
}
