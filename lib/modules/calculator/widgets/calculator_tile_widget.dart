import 'package:app/shared/constants/colors.dart';
import 'package:app/theme/index.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class CalculatorTileWidget extends StatelessWidget {
  const CalculatorTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: darkgray,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Container(
            color: white,
            width: 50,
            height: 50,
            child: const SizedBox(),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Халуун усны мэдээлэл',
                  style: FontStyles.labelLarge,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "123,456 мкв",
                      style: FontStyles.labelMedium,
                    ),
                    Text("123,456 төгрөг", style: FontStyles.labelMedium),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
    ;
  }
}
