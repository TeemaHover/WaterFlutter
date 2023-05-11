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
                            String value = '';

                            if (i != null &&
                                controller.paymentItem.isNotEmpty) {
                              controller.paymentItem[i].items?.forEach((item) =>
                                  {
                                    if (item.value != null)
                                      value = '$value${item.value}'
                                  });
                            }
                            return Expanded(
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: i! % 2 != 0 ? small : 0,
                                    right: i % 2 == 0 ? small : 0),
                                child: MainButton(
                                    color: Colors.white,
                                    onPressed: () {
                                      controller.paymentItem.value =
                                          controller.voluntary.value?.items ??
                                              [Items()];
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
                                    child: Column(
                                      children: [
                                        Text(
                                          e.title ?? '',
                                          style: FontStyles.labelMedium
                                              .copyWith(color: textGray),
                                        ),
                                        value != '' ? space8 : const SizedBox(),
                                        value != ''
                                            ? Text(
                                                value,
                                                style: FontStyles.labelMedium
                                                    .copyWith(color: primary),
                                              )
                                            : const SizedBox()
                                      ],
                                    )),
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
                    : Column(
                        children: controller.payments.map((p) {
                        if (p.price == null) {
                          return const Text('Nothing');
                        } else {
                          return const CalculatorTileWidget();
                        }
                      }).toList()),
              ),
              space16,
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
              Obx(() => controller.payments.isNotEmpty &&
                      controller.payments.first.price != null
                  ? MainButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Төлбөр төлөх"),
                          Text("Нийт :  ₮"),
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
