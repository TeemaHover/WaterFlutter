import 'package:app/modules/event/controllers/controller.dart';
import 'package:app/shared/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/widgets/main_card.dart';

class EventView extends StatefulWidget {
  const EventView({super.key});

  @override
  State<EventView> createState() => _EventViewState();
}

class _EventViewState extends State<EventView> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(EventController());
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: bgGray,
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                    tabs: [
                      Tab(
                        text: 'Улс',
                      ),
                      Tab(
                        text: 'Байгууллага',
                      ),
                    ],
                    indicatorSize: TabBarIndicatorSize.tab,
                    isScrollable: true,
                    labelPadding: EdgeInsets.symmetric(horizontal: 40),
                    indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(width: 5.0, color: Colors.white),
                        insets: EdgeInsets.symmetric(horizontal: 0.0))),
              ),
            ),
            title: const Text(
              'Хөтөлбөр',
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                color: bgGray,
                height: defaultHeight(context),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => controller.loading.value ||
                                controller.events.isEmpty
                            ? const SizedBox()
                            : NotificationCard(
                                event: controller.events.first,
                              ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: const Text(
                          'Бусад хөтөлбөрүүд',
                        ),
                      ),
                      Obx(() => controller.loading.value
                          ? const SizedBox()
                          : Column(
                              children: controller.events
                                  .map((element) => CardMain(
                                        event: element,
                                      ))
                                  .toList()))
                    ],
                  ),
                ),
              ),
              Container(
                color: bgGray,
                height: defaultHeight(context),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => controller.loading.value ||
                                controller.events.isEmpty
                            ? const SizedBox()
                            : NotificationCard(
                                event: controller.events.first,
                              ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: const Text(
                          'Бусад хөтөлбөрүүд',
                        ),
                      ),
                      Obx(() => controller.loading.value
                          ? const SizedBox()
                          : Column(
                              children: controller.events
                                  .map((element) => CardMain(
                                        event: element,
                                      ))
                                  .toList()))
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
