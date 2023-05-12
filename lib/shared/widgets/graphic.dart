import 'package:app/shared/index.dart';
import 'package:app/theme/index.dart';
import 'package:flutter/material.dart';

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
    return InkWell(
      onTap: () {},
      highlightColor: Colors.blue.withOpacity(0.4),
      splashColor: Colors.green.withOpacity(0.5),
      child: Container(
        padding: const EdgeInsets.all(origin),
        margin: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: bgGray,
          boxShadow: [
            BoxShadow(
              color: lightGray,
              blurRadius: 1, // soften the shadow
              spreadRadius: 1, //extend the shadow
            )
          ],
        ),
        child: InkWell(
          onTap: () {},
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
                          style: FontStyles.titleLarge
                              .copyWith(color: Colors.black),
                          children: [
                        TextSpan(text: symbol, style: FontStyles.labelSmall),
                      ])),
                  icon
                ],
              ),
              space4,
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: small),
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
                width: 150,
                child: BarChartWidget(
                  cl: color,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
