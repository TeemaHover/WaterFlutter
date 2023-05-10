import 'package:app/shared/index.dart';
import 'package:flutter/material.dart';

class ToIndicator extends StatefulWidget {
  const ToIndicator({super.key});

  @override
  State<ToIndicator> createState() => _ToIndicatorState();
}

class _ToIndicatorState extends State<ToIndicator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Тооцоолуур"),
      ),
      body: Container(
          margin: EdgeInsets.all(MediaQuery.of(context).size.width / 20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const Text("Хүйтэн ус"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Улаан тоо"),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 50,
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: darkgray,
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Улаан тоо',
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Хар тоо"),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 50,
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: darkgray,
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Хар тоо',
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
              MainButton(
                  onPressed: () {},
                  width: double.infinity,
                  text: "Жишээ харах",
                  child: const SizedBox())
            ],
          )),
    );
  }
}
