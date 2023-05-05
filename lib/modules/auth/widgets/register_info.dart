import 'package:app/modules/auth/controllers/controllers.dart';
import 'package:app/shared/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterUserInfo extends StatelessWidget {
  const RegisterUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());
    return Stack(
      children: [
        Container(
          child: Column(
            children: userInfos.map((u) {
              if (u['id']! == controller.user.value?.type) {
                return Row(
                  children: [
                    Text(u['infoValue']!),
                    SizedBox(
                      width: 200,
                      child: TextField(
                        onChanged: (text) =>
                            inputText(u['infoId']!, text, controller),
                      ),
                    )
                  ],
                );
              } else {
                return const SizedBox();
              }
            }).toList(),
          ),
        ),
        Positioned(
            bottom: MediaQuery.of(context).padding.bottom + 50,
            left: 0,
            right: 0,
            child: MainButton(
              child: const Text('цааш'),
              onPressed: () {
                controller.currentIndex.value =
                    controller.currentIndex.value + 1;
              },
            ))
      ],
    );
  }

  inputText(String type, String text, RegisterController controller) {
    switch (type) {
      case "firstName":
        controller.user.value?.firstName = text;
        break;
      case "lastName":
        controller.user.value?.lastName = text;
        break;

      case "phone":
        controller.user.value?.phone = text;
        break;
      default:
        break;
    }
  }
}
