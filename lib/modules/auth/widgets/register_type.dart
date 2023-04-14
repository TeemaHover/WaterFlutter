import 'package:app/modules/auth/controllers/controllers.dart';
import 'package:app/shared/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterUserTypeWidget extends StatelessWidget {
  const RegisterUserTypeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());
    return Stack(
      children: [
        Column(
          children: userTypes
              .map((e) => ElevatedButton(
                    child: Text(
                      e['value']! as String,
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      controller.user.value?.type = e['id']! as String?;
                      controller.currentIndex.value =
                          controller.currentIndex.value + 1;
                    },
                  ))
              .toList(),
        ),
      ],
    );
  }
}
