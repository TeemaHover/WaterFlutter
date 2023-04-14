import 'package:app/data/data.dart';
import 'package:app/modules/modules.dart';
import 'package:app/shared/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    final oCcy = NumberFormat("₮ #,##0", "en_US");
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: SecondAppBar(
        title: product.productName ?? '',
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          // await controller.getTournaments();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: origin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.network(
                  product.images?.first ??
                      'https://webcolours.ca/wp-content/uploads/2020/10/webcolours-unknown.png',
                  fit: BoxFit.contain,
                ),
              ),
              Text('Бүтээгдэхүүний нэр: ${product.productName ?? ''}'),
              Text('Хэмжээ: ${product.minUnit ?? ''}'),
              Text('Үнэ: ${oCcy.format(product.price ?? 0)}'),
              Row(
                children: [
                  TextButton(
                      onPressed: () {
                        showAlertDialog(context);
                      },
                      child: Obx(() => Text(controller.scannedBarcode.value))),
                  TextButton(
                      onPressed: () {
                        showAlertDialog(context);
                      },
                      child: Obx(() => Text(controller.scannedBarcode.value)))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
