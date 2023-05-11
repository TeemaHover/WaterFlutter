import 'package:app/data/data.dart';
import 'package:app/modules/calculator/calculator.dart';
import 'package:app/shared/index.dart';
import 'package:app/shared/widgets/second_appbar.dart';
import 'package:app/theme/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorAddWidget extends StatelessWidget {
  const CalculatorAddWidget({super.key, required this.items});
  final List<Items> items;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CalculatorController());
    return Scaffold(
      appBar: SecondAppBar(
        title: "Усны заалт оруулах",
        color: black,
      ),
      body: Container(
          padding:
              const EdgeInsets.symmetric(vertical: large, horizontal: medium),
          width: double.infinity,
          child: Stack(
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: items
                      .map((e) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e.title ?? '',
                                style: FontStyles.bodyMedium,
                              ),
                              space24,
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: e.items
                                          ?.map(
                                            (item) => Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  item.title ?? '',
                                                  style: FontStyles.titleMedium,
                                                ),
                                                space16,
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.4,
                                                  height: 50,
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 5),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: darkgray,
                                                  ),
                                                  child: TextField(
                                                    onChanged: (value) {
                                                      final payment = controller
                                                          .paymentItem
                                                          .firstWhere(
                                                        (element) =>
                                                            element.title ==
                                                            e.title!,
                                                        orElse: () => Items(),
                                                      );
                                                      final i = payment.items
                                                          ?.firstWhere(
                                                        (element) =>
                                                            element.title ==
                                                            item.title,
                                                        orElse: () => IItems(),
                                                      );

                                                      if (i == null) {
                                                        payment.items?.add(
                                                            IItems(
                                                                title:
                                                                    item.title,
                                                                value: int.parse(
                                                                    value)));
                                                      } else {
                                                        i.value =
                                                            int.parse(value);
                                                      }
                                                    },
                                                    keyboardType:
                                                        TextInputType.number,
                                                    decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      hintStyle: FontStyles
                                                          .labelMedium,
                                                      hintText:
                                                          item.title ?? '',
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                          .toList() ??
                                      []),
                              space24
                            ],
                          ))
                      .toList()),
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: 50,
                  child: MainButton(
                    text: 'Баталгаажуулах',
                    child: const SizedBox(),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CalculatorView(),
                          ));
                    },
                  ))
            ],
          )),
    );
  }
}
