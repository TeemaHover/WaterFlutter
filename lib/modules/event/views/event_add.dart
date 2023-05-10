import 'package:app/modules/modules.dart';
import 'package:app/shared/index.dart';
import 'package:flutter/material.dart';

class EventAdd extends StatefulWidget {
  const EventAdd({super.key});

  @override
  State<EventAdd> createState() => _EventAddState();
}

const List<String> list = <String>['One', 'Two', 'Three'];

class _EventAddState extends State<EventAdd> {
  String dropdownValue = list.first;
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
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: darkgray,
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            child: DropdownButton<String>(
                              value: dropdownValue,
                              icon: const Icon(Icons.arrow_downward),
                              elevation: 16,

                              style: const TextStyle(color: black),
                              // underline: Container(
                              //   height: 2,
                              //   color: Colors.deepPurpleAccent,
                              // ),
                              onChanged: (String? value) {
                                // This is called when the user selects an item.
                                setState(() {
                                  dropdownValue = value!;
                                });
                              },
                              items: list.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          )
                        ],
                      ),
                      space16,
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
                AddContainerWidget(
                  title: 'Certificate-ын зураг оруулах',
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Text("Та зургаа оруулна уу",
                                style: Theme.of(context).textTheme.labelMedium),
                          ],
                        ),
                        space16,
                        Row(
                          children: [
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
                            space16,
                            Text("File name",
                                style: Theme.of(context).textTheme.labelMedium),
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
