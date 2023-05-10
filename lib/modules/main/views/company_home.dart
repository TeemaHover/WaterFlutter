import 'package:flutter/material.dart';

import '../../../shared/widgets/app_bar.dart';
import '../../../shared/widgets/main_card.dart';
import '../../../shared/widgets/notif_card.dart';

class CompanyView extends StatefulWidget {
  const CompanyView({super.key});

  @override
  State<CompanyView> createState() => _CompanyViewState();
}

class _CompanyViewState extends State<CompanyView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: "Company Home"),
      body: Column(
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
    );
  }
}
