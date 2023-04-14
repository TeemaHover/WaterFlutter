import 'package:app/modules/modules.dart';
import 'package:app/shared/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrimeView extends GetView<PrimeController> {
  const PrimeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PrimeController());
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: MainAppBar(
        title: 'Нүүр',
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          // await controller.getTournaments();
        },
        child: SingleChildScrollView(
          child: Container(
            height: defaultHeight(context),
            padding: const EdgeInsets.symmetric(horizontal: origin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                    child: MainContainer(
                        axisCount: 4,
                        isScroll: const NeverScrollableScrollPhysics(),
                        title: 'Харилцагчид',
                        onTap: () {
                          Navigator.of(context)
                              .push(createRoute(const CostumerView()));
                        },
                        children: ['asdf', 'asf', 'asd']
                            .map((e) => SecondCardWidget(
                                  name: e,
                                  image: '$e + $e',
                                ))
                            .toList())),
                Flexible(
                    child: Obx(
                  () => MainContainer(
                      title: 'Шинэ бүтээгдэхүүн',
                      onTap: () {
                        Navigator.of(context).push(createRoute(ProductView()));
                      },
                      children: controller.products
                          .map((e) => MainCardWidget(
                                product: e,
                                onTap: () {
                                  Navigator.of(context)
                                      .push(createRoute(ProductDetailView(
                                    product: e,
                                  )));
                                },
                              ))
                          .toList()),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
