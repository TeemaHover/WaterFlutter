import 'package:app/modules/home/controllers/controllers.dart';
import 'package:app/shared/constants/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondAppBar extends StatelessWidget with PreferredSizeWidget {
  SecondAppBar({
    super.key,
    required this.title,
    this.titleMargin = 0.0,
    this.hasLeading = true,
    this.hasLogo = true,
    this.paddingBottom = 12.0,
    this.wallet = false,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.settings = false,
  });
  final String title;
  final bool hasLeading;
  final bool settings;
  final double paddingBottom;
  final bool hasLogo;
  final bool wallet;
  final double titleMargin;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Size get preferredSize => const Size.fromHeight(85);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    final w = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      padding: const EdgeInsets.symmetric(horizontal: origin),
      decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(color: Color(0xffcfcfcf)))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
              space16,
              Text(
                title,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
