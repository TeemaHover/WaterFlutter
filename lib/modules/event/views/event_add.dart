import 'package:app/modules/modules.dart';
import 'package:app/shared/index.dart';
import 'package:flutter/material.dart';

class EventAdd extends StatefulWidget {
  const EventAdd({super.key});

  @override
  State<EventAdd> createState() => _EventAddState();
}

class _EventAddState extends State<EventAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgGray,
        appBar: MainAppBar(
          title: "Add",
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                space16,
                const Text(
                  "Зар оруулах хэсэг",
                ),
                space24,
                AddContainerWidget(
                  title: 'Хөтөлбөрийн нэр',
                  children: [
                    SizedBox(
                      width: 127,
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: small, horizontal: 12),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(color: textGray)),
                            hintText: 'Нэрээ бичнэ үү.',
                            hintStyle: Theme.of(context).textTheme.labelMedium),
                      ),
                    ),
                  ],
                ),
                space24,
                AddContainerWidget(
                    title: 'Оролцох гишүүдийн хязгаар',
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Гишүүд',
                              style: Theme.of(context).textTheme.labelLarge),
                          space16,
                          SizedBox(
                            width: 127,
                            child: TextField(
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: small, horizontal: 12),
                                  border: const OutlineInputBorder(
                                      borderSide: BorderSide(color: textGray)),
                                  hintText: 'Тоогоо бичнэ үү.',
                                  hintStyle:
                                      Theme.of(context).textTheme.labelMedium),
                            ),
                          ),
                        ],
                      )
                    ]),
                space24,
                AddContainerWidget(title: 'Хөтөлбөрийн урамшуулал', children: [
                  Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Урамшуулал',
                              style: Theme.of(context).textTheme.labelLarge),
                          space16,
                          SizedBox(
                            width: 127,
                            child: TextField(
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: small, horizontal: 12),
                                  border: const OutlineInputBorder(
                                      borderSide: BorderSide(color: textGray)),
                                  hintText: 'Урамшуулалын нэр.',
                                  hintStyle:
                                      Theme.of(context).textTheme.labelMedium),
                            ),
                          ),
                          space16,
                          MainButton(
                              onPressed: () {},
                              text: "",
                              height: 30,
                              child: const SizedBox())
                        ],
                      ),
                      space16,
                      MainButton(
                          onPressed: () {},
                          text: "Өөр урамшуулал нэмэх",
                          child: const SizedBox())
                    ],
                  )
                ]),
                const SizedBox(
                  height: 20,
                ),
                AddContainerWidget(
                  title: 'Хөтөлбөрийн үргэлжлэх хугацаа',
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text("Эхлэх огноо",
                                style: Theme.of(context).textTheme.labelMedium),
                            space16,
                            SizedBox(
                              width: 127,
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: small, horizontal: 12),
                                    border: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: textGray)),
                                    hintText: 'Огноо.',
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .labelMedium),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text("Дуусах огноо",
                                style: Theme.of(context).textTheme.labelMedium),
                            space16,
                            SizedBox(
                              width: 127,
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: small, horizontal: 12),
                                    border: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: textGray)),
                                    hintText: 'Огноо.',
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .labelMedium),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                space24,
                AddContainerWidget(title: 'Гүйцэтгэх ажил', children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Ажил',
                              style: Theme.of(context).textTheme.labelLarge),
                          space16,
                          SizedBox(
                            width: 127,
                            child: TextField(
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: small, horizontal: 12),
                                  border: const OutlineInputBorder(
                                      borderSide: BorderSide(color: textGray)),
                                  hintText: 'Ажлын нэр.',
                                  hintStyle:
                                      Theme.of(context).textTheme.labelMedium),
                            ),
                          ),
                        ],
                      ),
                      space16,
                      SizedBox(
                        width: double.infinity,
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: small, horizontal: 12),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(color: textGray)),
                              hintText: 'Ажлын гүйцэтгэлийн дэлгэрэнгүй.',
                              hintStyle:
                                  Theme.of(context).textTheme.labelMedium),
                        ),
                      ),
                      space16,
                      MainButton(
                          onPressed: () {},
                          text: "Өөр урамшуулал нэмэх",
                          child: const SizedBox())
                    ],
                  )
                ]),
                space24,
                MainButton(
                    onPressed: () {},
                    text: "Нийтлэх",
                    width: double.infinity,
                    child: const SizedBox())
              ],
            ),
          ),
        ));
  }
}
