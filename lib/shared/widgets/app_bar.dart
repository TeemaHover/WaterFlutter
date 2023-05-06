import 'package:flutter/material.dart';

AppBar deq({required String title}) {
  return AppBar(
    toolbarHeight: kToolbarHeight,
    title: Text(
      title,
      style: const TextStyle(color: Colors.black),
    ),
    shadowColor: Colors.transparent,
    backgroundColor: Colors.white,
  );
}
