import 'package:app/data/data.dart';
import 'package:app/modules/modules.dart';
import 'package:app/shared/index.dart';
import 'package:app/theme/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class EventAdd extends StatefulWidget {
  const EventAdd({super.key});

  @override
  State<EventAdd> createState() => _EventAddState();
}

const List<String> list = <String>['Купон', 'Мөнгө'];

class _EventAddState extends State<EventAdd> {
  String dropdownValue = list.first;
  Event event = Event();
  List<Sale> sale = [Sale(type: 'coupon')];
  List<ExecEvent> exec = [];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(EventController());
    return Scaffold(
        backgroundColor: bgGray,
        appBar: MainAppBar(
          title: "Хөтөлбөр нэмэх",
          color: black,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // space16,
                // const Text(
                //   "Зар оруулах хэсэг",
                // ),
                space24,
                AddContainerWidget(
                  title: 'Хөтөлбөрийн нэр',
                  children: [
                    SizedBox(
                      width: 127,
                      child: TextField(
                        onChanged: (value) => setState(() {
                          event.name = value;
                        }),
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: small, horizontal: 12),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(color: textGray)),
                            hintText: 'Нэрээ бичнэ үү.',
                            hintStyle: FontStyles.labelMedium),
                      ),
                    ),
                    space16,
                    SizedBox(
                      child: TextField(
                        onChanged: (value) => setState(() {
                          event.description = value;
                        }),
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: small, horizontal: 12),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(color: textGray)),
                            hintText: 'Тайлбар бичнэ үү.',
                            hintStyle: FontStyles.labelMedium),
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
                          Text('Гишүүд', style: FontStyles.labelLarge),
                          space16,
                          SizedBox(
                            width: 127,
                            child: TextField(
                              onChanged: (value) => setState(() {
                                event.members = int.parse(value);
                              }),
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: small, horizontal: 12),
                                  border: const OutlineInputBorder(
                                      borderSide: BorderSide(color: textGray)),
                                  hintText: 'Тоогоо бичнэ үү.',
                                  hintStyle: FontStyles.labelMedium),
                            ),
                          ),
                        ],
                      )
                    ]),
                space24,
                AddContainerWidget(title: 'Хөтөлбөрийн урамшуулал', children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Flexible(
                            flex: 2,
                            child: TextField(
                              onChanged: (value) => setState(() {
                                sale.first.name = value;
                              }),
                              decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: small, horizontal: 12),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(color: textGray)),
                                  hintText: 'Урамшуулалын нэр',
                                  hintStyle: FontStyles.labelMedium),
                            ),
                          ),
                          space16,
                          Flexible(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: darkgray,
                              ),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                icon: const Icon(Icons.arrow_downward),
                                elevation: 16,
                                style: const TextStyle(color: black),
                                onChanged: (String? value) {
                                  setState(() {
                                    if (value == 'Купон') {
                                      sale.first.type = 'coupon';
                                    } else {
                                      sale.first.type = 'price';
                                    }
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
                            ),
                          ),
                        ],
                      ),
                      space16,
                      TextField(
                        onChanged: (value) => setState(() {
                          sale.first.description = value;
                        }),
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: small, horizontal: 12),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: textGray)),
                            hintText: 'Дэлгэрэнгүй',
                            hintStyle: FontStyles.labelMedium),
                      ),
                      space16,
                    ],
                  )
                ]),
                space24,
                AddContainerWidget(
                  title: 'Хөтөлбөрийн үргэлжлэх хугацаа',
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text("Эхлэх огноо", style: FontStyles.labelMedium),
                            space16,
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: textGray)),
                              padding: const EdgeInsets.symmetric(
                                  vertical: small, horizontal: 12),
                              width: 127,
                              child: GestureDetector(
                                onTap: () async {
                                  DateTime? pick = await showDatePicker(
                                      context: context,
                                      initialDate: event.startDate != null
                                          ? DateTime.fromMillisecondsSinceEpoch(
                                              event.startDate!)
                                          : DateTime.now(),
                                      firstDate: DateTime.now(),
                                      lastDate: DateTime(2101));
                                  if (pick != null) {
                                    setState(() {
                                      event.startDate =
                                          pick.millisecondsSinceEpoch;
                                    });
                                  }
                                },
                                child: Text(
                                    '${event.startDate != null ? DateFormat('dd/MM/yyyy').format(DateTime.fromMillisecondsSinceEpoch(event.startDate!)) : "Огноо:"}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text("Дуусах огноо", style: FontStyles.labelMedium),
                            space16,
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: textGray)),
                              padding: const EdgeInsets.symmetric(
                                  vertical: small, horizontal: 12),
                              width: 127,
                              child: GestureDetector(
                                onTap: () async {
                                  DateTime? pick = await showDatePicker(
                                      context: context,
                                      initialDate: event.endDate != null
                                          ? DateTime.fromMillisecondsSinceEpoch(
                                              event.endDate!)
                                          : event.startDate != null
                                              ? DateTime
                                                  .fromMillisecondsSinceEpoch(
                                                      event.startDate! +
                                                          24 * 3600 * 1000)
                                              : DateTime.now(),
                                      firstDate: event.startDate != null
                                          ? DateTime.fromMillisecondsSinceEpoch(
                                              event.startDate! +
                                                  24 * 3600 * 1000)
                                          : DateTime.now(),
                                      lastDate: DateTime(2101));
                                  if (pick != null) {
                                    setState(() {
                                      event.endDate =
                                          pick.millisecondsSinceEpoch;
                                    });
                                  }
                                },
                                child: Text(
                                    '${event.endDate != null ? DateFormat('dd/MM/yyyy').format(DateTime.fromMillisecondsSinceEpoch(event.endDate!)) : "Огноо:"}',
                                    style: Theme.of(context)
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
                      SizedBox(
                        width: double.infinity,
                        child: TextField(
                          onChanged: (value) {
                            event.exec = value;
                          },
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: small, horizontal: 12),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(color: textGray)),
                              hintText: 'Тайлбар',
                              hintStyle: FontStyles.labelMedium),
                        ),
                      ),
                      space16,
                      Row(
                        children: [
                          Text('Ажил', style: FontStyles.labelLarge),
                          space16,
                          SizedBox(
                            width: 127,
                            child: TextField(
                              onChanged: (value) {
                                if (exec.isEmpty) {
                                  exec.add(ExecEvent(name: value));
                                } else {
                                  setState(() {
                                    exec.first.name = value;
                                  });
                                }
                              },
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: small, horizontal: 12),
                                  border: const OutlineInputBorder(
                                      borderSide: BorderSide(color: textGray)),
                                  hintText: 'Ажлын нэр.',
                                  hintStyle: FontStyles.labelMedium),
                            ),
                          ),
                        ],
                      ),
                      space16,
                      SizedBox(
                        width: double.infinity,
                        child: TextField(
                          onChanged: (value) {
                            if (exec.isEmpty) {
                              exec.add(ExecEvent(description: value));
                            } else {
                              setState(() {
                                exec.first.description = value;
                              });
                            }
                          },
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: small, horizontal: 12),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(color: textGray)),
                              hintText: 'Ажлын гүйцэтгэлийн дэлгэрэнгүй.',
                              hintStyle: FontStyles.labelMedium),
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
                    onPressed: () {
                      setState(() {
                        event.execEvent = exec;
                        event.sale = sale;
                      });
                      controller.createEvent(event);
                    },
                    text: "Нийтлэх",
                    width: double.infinity,
                    child: const SizedBox())
              ],
            ),
          ),
        ));
  }
}
