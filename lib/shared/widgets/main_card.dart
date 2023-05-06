import 'package:app/shared/constants/colors.dart';
import 'package:flutter/material.dart';

class CardMain extends StatefulWidget {
  final String title;
  final String time;

  const CardMain({super.key, required this.title, required this.time});

  @override
  State<CardMain> createState() => _CardMainState();
}

class _CardMainState extends State<CardMain> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: const Text(
            'Бусад хөтөлбөрүүд',
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.all(10),
          color: white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 50,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: darkgray,
                  ),
                  width: 50,
                  height: 50,
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.title),
                    Text('Ухлах хугацаа: ${widget.time}'),
                  ],
                ),
              ),
              SizedBox(
                width: 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.person_outline,
                      size: 32,
                    ),
                    Text('990/1000'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
