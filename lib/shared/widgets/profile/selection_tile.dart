import 'package:flutter/material.dart';

class SelectionTile extends StatefulWidget {
  final IconData icon;
  final String txt;
  const SelectionTile({super.key, required this.icon, required this.txt});

  @override
  State<SelectionTile> createState() => _SelectionTileState();
}

class _SelectionTileState extends State<SelectionTile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(widget.icon),
        const SizedBox(width: 20),
        Expanded(
            child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey))),
                child: Text(widget.txt))),
      ],
    );
  }
}
