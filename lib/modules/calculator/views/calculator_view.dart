import 'package:app/data/data.dart';
import 'package:app/modules/calculator/calculator.dart';
import 'package:app/shared/index.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/text_theme.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CalculatorController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Тооцоолуур"),
      ),
      body: Container(
        margin: EdgeInsets.all(MediaQuery.of(context).size.width / 20),
        height: defaultHeight(context),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: darkgray,
                ),
                child: const SizedBox(),
              ),
              space16,
              Text(
                "Усны заалт оруулах",
                style: FontStyles.bodyMedium,
              ),
              space16,
              Obx(() => controller.loading.value
                  ? CircularProgressIndicator()
                  : Row(
                      children: controller.voluntary.value?.items?.map((e) {
                            final i =
                                controller.voluntary.value?.items?.indexOf(e);

                            return Expanded(
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: i! % 2 != 0 ? small : 0,
                                    right: i % 2 == 0 ? small : 0),
                                child: MainButton(
                                  color: Colors.white,
                                  onPressed: () {
                                    controller.voluntary.value?.items
                                        ?.forEach((itm) {
                                      controller.paymentItem.add(PaymentItem(
                                          title: itm.title,
                                          symbol: itm.symbol,
                                          unitPrice: itm.unitPrice));
                                    });

                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              CalculatorAddWidget(
                                                  items: controller.voluntary
                                                          .value?.items ??
                                                      []),
                                        ));
                                  },
                                  child: Text(
                                    e.title ?? '',
                                    style: FontStyles.labelMedium
                                        .copyWith(color: textGray),
                                  ),
                                ),
                              ),
                            );
                          }).toList() ??
                          [],
                    )),
              space16,
              const Divider(
                color: blue,
              ),
              space16,
              Obx(
                () => controller.loading.value
                    ? const CircularProgressIndicator()
                    : controller.payments.isNotEmpty
                        ? Column(
                            children: controller.payments.first.items?.map((p) {
                                  return CalculatorTileWidget(
                                    item: p,
                                  );
                                }).toList() ??
                                [])
                        : const Text('Nothing'),
              ),
              space16,
              Obx(() => controller.payments.isNotEmpty &&
                      controller.payments.first.price != null
                  ? MainButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Төлбөр төлөх"),
                          Text(
                              "Нийт : ${controller.payments.isNotEmpty ? controller.payments.first.price : ''} ₮"),
                        ],
                      ))
                  : SizedBox())
            ],
          ),
        ),
      ),
    );
  }
}
