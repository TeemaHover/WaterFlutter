import 'package:app/data/data.dart';
import 'package:app/modules/event/controllers/controller.dart';
import 'package:app/modules/home/controllers/controllers.dart';
import 'package:app/shared/constants/index.dart';
import 'package:app/theme/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardMain extends StatelessWidget {
  const CardMain({super.key, required this.event});
  final Event event;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(EventController());
    final homeController = Get.put(HomeController());
    DateTime time = DateTime.fromMillisecondsSinceEpoch(
        event.startDate ?? DateTime.now().millisecondsSinceEpoch);
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (context) => Container(
              height: MediaQuery.of(context).size.height * 0.9,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 48),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      event.name ?? '',
                      style: FontStyles.bodyMedium,
                    ),
                    space16,
                    Text(event.description ?? '',
                        style: FontStyles.titleMedium),
                    space16,
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bgGray,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Гишүүд",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium),
                                Text(
                                    "${event.registerMembers}/${event.members}",
                                    style: FontStyles.labelSmall),
                              ],
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 10,
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                child: LinearProgressIndicator(
                                  value: event.registerMembers!.toDouble() /
                                      event.members!.toDouble(),
                                  color: const Color(0xff3899F2),
                                  backgroundColor: const Color(0xffD6D6D6),
                                ),
                              ),
                            )
                          ],
                        )),
                    space16,
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bgGray,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Урамшуулал",
                                  style: FontStyles.titleMedium),
                              space16,
                              Text("${event.exec}",
                                  style: FontStyles.titleSmall),
                              space16,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: white,
                                      ),
                                      height: 200,
                                    ),
                                  ),
                                  space16,
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: white,
                                      ),
                                      height: 200,
                                    ),
                                  ),
                                ],
                              )
                            ])),
                    space16,
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bgGray,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Үргэжлэх хугацаа",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium),
                              ],
                            ),
                            const Text("a", style: FontStyles.titleSmall)
                          ],
                        )),
                    space16,
                    const Divider(
                      height: 20,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                      color: black,
                    ),
                    // Container(
                    //   padding: const EdgeInsets.symmetric(
                    //       horizontal: 10, vertical: 10),
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       const Text("Хөтөлбөрт хамааралтай зураг бичлэг",
                    //           style: FontStyles.bodyMedium),
                    //       space16,
                    //       Container(
                    //         width: MediaQuery.of(context).size.width * 0.9,
                    //         height: 400,
                    //         decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(10),
                    //           color: gray,
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                    space16,
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text("Гүйцэтгэх ажил",
                                  style: FontStyles.bodyMedium)
                            ],
                          ),
                          Text("${event.exec}", style: FontStyles.titleSmall)
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: bgGray,
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: event.execEvent
                                  ?.map((e) => Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          space16,
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.task_alt,
                                                size: 50,
                                              )
                                            ],
                                          ),
                                          space16,
                                          Text("${e.name}",
                                              style: FontStyles.titleMedium),
                                          Text("${e.description}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium)
                                        ],
                                      ))
                                  .toList() ??
                              []),
                    ),
                    space16,
                    const Divider(
                      height: 20,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                      color: black,
                    ),
                    space16,
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: black,
                            backgroundColor: bgGray,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            if (event.users
                                    ?.contains(homeController.user!.sId) ==
                                null) {
                              if (event.registerMembers == event.members) {
                                Get.snackbar('Дүүрсэн байна.', "");
                              } else {
                                controller.registerEvent(event.sId!);
                              }
                            } else {
                              Get.snackbar('Бүртгүүлсэн байна.', "");
                            }
                            Navigator.pop(context);
                          },
                          child: const Text("Бүртгүүлэх")),
                    ),
                  ],
                ),
              )),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: small),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 50,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: darkgray,
                      ),
                      width: 50,
                      height: 50,
                    ),
                  ),
                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          event.business?.companyName ?? '',
                          style: FontStyles.titleSmall,
                        ),
                        Text(
                          'Эхлэх хугацаа: ${time.year}/${time.month}/${time.day}',
                        ),
                        // style: FontStyles.labelSmall)
                      ],
                    ),
                  ),
                  homeController.user?.type == 'user'
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.person_outline,
                              size: 32,
                            ),
                            Text('${event.registerMembers}/${event.members}',
                                style: FontStyles.labelLarge),
                          ],
                        )
                      : const SizedBox()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
