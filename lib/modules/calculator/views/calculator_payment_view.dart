import 'package:app/data/data.dart';
import 'package:app/modules/modules.dart';
import 'package:app/shared/index.dart';
import 'package:app/shared/widgets/second_appbar.dart';
import 'package:app/theme/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class CalculatorPaymentView extends StatelessWidget {
  const CalculatorPaymentView({super.key, required this.payment});
  final Payment payment;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondAppBar(
        title: "Усны заалтын задаргаа",
        color: black,
      ),
      body: Container(
          padding:
              const EdgeInsets.symmetric(vertical: large, horizontal: medium),
          width: double.infinity,
          child: Stack(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'Төлбөрийн задаргаа',
                  style: FontStyles.titleLarge,
                ),
                space32,
                Column(
                  children: payment.items
                          ?.map((e) => CalculatorTileWidget(item: e))
                          .toList() ??
                      [],
                )
              ]),
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: 50,
                  child: MainButton(
                    text: 'Төлбөр төлөх',
                    child: const SizedBox(),
                    onPressed: () async {
                      Get.snackbar('Төлбөр төлөгдлөө', "Success");
                      Navigator.pop(context);
                    },
                  ))
            ],
          )),
    );
  }
}
