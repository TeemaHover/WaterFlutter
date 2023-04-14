import 'package:app/shared/index.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key, this.costumerName});
  final String? costumerName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: SecondAppBar(
        title: costumerName ?? 'Бүтээгдэхүүнүүд',
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          // await controller.getTournaments();
        },
        child: SingleChildScrollView(
          child: Container(
              height: defaultHeight(context),
              padding: const EdgeInsets.symmetric(horizontal: origin),
              child: const SizedBox()),
        ),
      ),
    );
    ;
  }
}
// MainContainer(
//                   title: 'Бүтээгдэхүүнүүд',
//                   children: ['asdf', 'asdf', 'asdf']
//                       .map((e) => MainCardWidget(
//                             name: e,
//                             image: e,
//                             price: e,
//                             onTap: () {
//                               Navigator.of(context)
//                                   .push(createRoute(ProductDetailView(
//                                 title: e,
//                               )));
//                             },
//                           ))
//                       .toList())