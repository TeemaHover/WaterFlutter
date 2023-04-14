import 'package:app/shared/index.dart';
import 'package:flutter/material.dart';

class CostumerView extends StatelessWidget {
  const CostumerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: SecondAppBar(
        title: 'Харилцагчид',
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          // await controller.getTournaments();
        },
        child: SingleChildScrollView(
          child: Container(
              height: defaultHeight(context),
              padding: const EdgeInsets.symmetric(horizontal: origin),
              child: MainContainer(
                  axisCount: 4,
                  children: ['asdf', 'asdf', 'asdf']
                      .map((e) => SecondCardWidget(
                            name: e,
                            image: e,
                          ))
                      .toList())),
        ),
      ),
    );
    ;
  }
}
