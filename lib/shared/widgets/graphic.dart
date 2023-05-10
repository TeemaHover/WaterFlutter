import 'package:app/shared/constants/colors.dart';
import 'package:app/shared/index.dart';
import 'package:app/theme/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class GraphicWidget extends StatelessWidget {
  const GraphicWidget(
      {super.key,
      required this.title,
      required this.percent,
      required this.icon,
      required this.value,
      this.color = blue,
      required this.symbol});
  final String title;
  final double percent;
  final Icon icon;
  final double value;
  final String symbol;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(origin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: bgGray,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: textGray)),
          space4,
          Row(
            children: [
              RichText(
                  text: TextSpan(
                      text: "$value ",
                      style: FontStyles.titleLarge,
                      children: [
                    TextSpan(
                        text: symbol,
                        style: FontStyles.labelSmall),
                  ])),
              icon
            ],
          ),
          space4,
          Container(
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: small),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 15,
                ),
                Text('$percent %',
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(color: white)),
              ],
            ),
          ),
          space32,
          SizedBox(
            height: 50,
            width: 132,
            child: BarChartWidget(
              cl: color,
            ),
          )
        ],
      ),
    );
    ;
  }
}
