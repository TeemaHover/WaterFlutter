import 'package:app/shared/index.dart';
import 'package:flutter/material.dart';

class DeliverView extends StatelessWidget {
  const DeliverView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: SecondAppBar(
        title: 'Хүргэлтийн мэдээлэл',
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          // await controller.getTournaments();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: origin),
          child: Stack(
            children: [
              // SingleChildScrollView(
              //   child: Container(
              //     height: defaultHeight(context),
              //     padding: const EdgeInsets.symmetric(horizontal: origin),
              //     child: MainContainer(
              //         axisCount: 1,
              //         children: ['asdf', 'asdf', 'asdf']
              //             .map((e) => ProductCardWidget(
              //                   product: Product(
              //                       productName: e, images: [e], price: 1),
              //                   onTap: () {
              //                     Navigator.of(context)
              //                         .push(createRoute(ProductDetailView(
              //                       product: e,
              //                     )));
              //                   },
              //                 ))
              //             .toList()),
              //   ),
              // ),
              Positioned(
                  bottom: MediaQuery.of(context).padding.bottom + 50,
                  left: 0,
                  right: 0,
                  child: MainButton(
                    child: Text('Мэдэгдэл илгээх'),
                    onPressed: () {},
                  ))
            ],
          ),
        ),
      ),
    );
    ;
  }
}
