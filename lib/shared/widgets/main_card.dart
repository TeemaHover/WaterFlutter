import 'package:app/shared/constants/index.dart';
import 'package:app/theme/index.dart';
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
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (context) => Container(
              height: MediaQuery.of(context).size.height * 0.9,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 48),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Хөтөлбөрийн нэр",
                      style: FontStyles.bodyMedium,
                    ),
                    space16,
                    Text("asdasdasdad",
                        style: FontStyles.titleMedium),
                    space16,
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bgGray,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Гишүүд",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium),
                                Text("660/1000",
                                    style:
                                        FontStyles.labelSmall),
                              ],
                            ),
                            const Text("Progress bar")
                          ],
                        )),
                    space16,
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bgGray,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Урамшуулал",
                                  style:
                                      FontStyles.titleMedium),
                              Text("as",
                                  style:
                                      FontStyles.titleSmall),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: white,
                                    ),
                                    width: 160,
                                    height: 200,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: white,
                                    ),
                                    width: 160,
                                    height: 200,
                                  ),
                                ],
                              )
                            ])),
                    space16,
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bgGray,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Үргэжлэх хугацаа",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium),
                              ],
                            ),
                            Text("a",
                                style: FontStyles.titleSmall)
                          ],
                        )),
                    space16,
                    const Divider(
                      height: 20,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                      color: black,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Хөтөлбөрт хамааралтай зураг бичлэг",
                              style: FontStyles.bodyMedium),
                          space16,
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: gray,
                            ),
                          )
                        ],
                      ),
                    ),
                    space16,
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Гүйцэтгэх ажил",
                                  style: FontStyles.bodyMedium)
                            ],
                          ),
                          Text("a",
                              style: FontStyles.titleSmall)
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: bgGray,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [Icon(Icons.forest_outlined)],
                          ),
                          Text("Ажил гүйцэтгэлийн нэр",
                              style: FontStyles.titleMedium),
                          Text("a",
                              style: FontStyles.titleSmall)
                        ],
                      ),
                    ),
                    space16,
                    const Divider(
                      height: 20,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                      color: black,
                    ),
                    space16,
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: black,
                            backgroundColor: bgGray,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text("Бүртгүүлэх")),
                    ),
                  ],
                ),
              )),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: white,
            ),
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
                      Text(
                        widget.title,
                        style: FontStyles.titleSmall,
                      ),
                      Text(
                        'Эхлах хугацаа: ${widget.time}',
                      ),
                      // style: FontStyles.labelSmall)
                    ],
                  ),
                ),
                SizedBox(
                  width: 70,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.person_outline,
                        size: 32,
                      ),
                      Text('990/1000',
                          style: FontStyles.labelLarge),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
