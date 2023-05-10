import 'package:app/shared/index.dart';
import 'package:flutter/material.dart';

class CalculatorAddWidget extends StatelessWidget {
  const CalculatorAddWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: "Усны заалт оруулах"),
      body: Container(
          margin: EdgeInsets.all(MediaQuery.of(context).size.width / 20),
          width: double.infinity,
          height: defaultHeight(context),
          child: Column(
            children: [
              const Text("Хүйтэн ус"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
              const SizedBox(
                height: 20,
              ),
              MainButton(
                  onPressed: () {},
                  width: double.infinity,
                  text: "Жишээ харах",
                  child: const SizedBox()),
              const SizedBox(
                height: 20,
              ),
              const Text("Халуун ус"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
              const SizedBox(
                height: 20,
              ),
              MainButton(
                  onPressed: () {},
                  width: double.infinity,
                  text: "Баталгаажуулах",
                  child: const SizedBox()),
            ],
          )),
    );
  }
}
