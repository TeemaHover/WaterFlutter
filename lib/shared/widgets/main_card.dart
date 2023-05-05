import 'package:app/data/data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MainCardWidget extends StatelessWidget {
  const MainCardWidget({super.key, required this.onTap, required this.product});
  final Product product;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    final oCcy = NumberFormat("₮ #,##0", "en_US");
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Image.network(
            product.images?.first ??
                'https://webcolours.ca/wp-content/uploads/2020/10/webcolours-unknown.png',
            fit: BoxFit.contain,
          ),
          Text(product.productName ?? ''),
          Text(oCcy.format(product.price ?? 0)),
        ],
      ),
    );
  }
}
