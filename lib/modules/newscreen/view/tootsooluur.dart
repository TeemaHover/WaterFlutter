import 'package:flutter/material.dart';

class Tootsooluur extends StatefulWidget {
  const Tootsooluur({super.key});

  @override
  State<Tootsooluur> createState() => _TootsooluurState();
}

class _TootsooluurState extends State<Tootsooluur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Тооцоолуур"),
      ),
      body: const Text("data"),
    );
  }
}
