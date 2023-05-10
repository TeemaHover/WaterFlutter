import 'package:flutter/material.dart';

import '../../../shared/widgets/app_bar.dart';
import '../../../shared/widgets/main_card.dart';
import '../../../shared/widgets/notif_card.dart';

class CompanyHome extends StatefulWidget {
  const CompanyHome({super.key});

  @override
  State<CompanyHome> createState() => _CompanyHomeState();
}

class _CompanyHomeState extends State<CompanyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: deq(title: "Company Home"),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 20),
              child: const Text("Asd"),
            ),
            const NotificationCard(),
            const CardMain(
              title: "asd",
              time: "10",
            ),
          ],
        ),
      ),
    );
  }
}
