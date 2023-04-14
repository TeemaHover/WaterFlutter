import 'package:app/modules/modules.dart';
import 'package:app/shared/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookmarkView extends StatelessWidget {
  const BookmarkView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OrderController());
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: SecondAppBar(
        title: 'Бүтээгдэхүүний нэр',
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await controller.getProducts();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: origin),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Container(
                    height: defaultHeight(context),
                    padding: const EdgeInsets.symmetric(horizontal: origin),
                    child: Obx(() => MainContainer(
                        axisCount: 1,
                        children: controller.products
                            .map((e) => ProductCardWidget(
                                  // isDelete: true,
                                  // child: Text('${1}'),
                                  product: e,
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(createRoute(ProductDetailView(
                                          
                                      product: e,
                                    )));
                                  },
                                ))
                            .toList()))),
              ),
              Positioned(
                  bottom: MediaQuery.of(context).padding.bottom + 50,
                  left: 0,
                  right: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('НИйт: ${123123}'),
                      SizedBox(
                        width: double.infinity,
                        child: MainButton(
                          child: Text('Мэдэгдэл илгээх'),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
    ;
  }
}
