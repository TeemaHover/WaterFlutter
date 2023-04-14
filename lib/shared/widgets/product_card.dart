import 'package:app/data/data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget(
      {super.key,
      required this.product,
      this.isDelete = false,
      this.child,
      required this.onTap});
  final Product product;
  final bool isDelete;
  final Widget? child;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    final oCcy = NumberFormat("₮ #,##0", "en_US");
    return Stack(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Image.network(
                  product.images?.first ??
                      'https://webcolours.ca/wp-content/uploads/2020/10/webcolours-unknown.png',
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Бүтээгдэхүүний нэр: ${product.productName ?? ''}'),
                    Text('Хэмжээ: ${product.minUnit ?? ''}'),
                    Row(
                      children: [
                        Text('Үнэ: ${oCcy.format(product.price ?? 0)}'),
                        child ?? const SizedBox()
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        isDelete
            ? Positioned(
                right: 0,
                top: 0,
                child: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {},
                ))
            : const SizedBox()
      ],
    );
  }
}
