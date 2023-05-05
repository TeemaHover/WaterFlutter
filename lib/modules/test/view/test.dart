import 'package:app/shared/index.dart';
import 'package:flutter/material.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: defaultHeight(context)
        color: Colors.red,
        child: const Text('Test'),
      ),
    );
  }
}
