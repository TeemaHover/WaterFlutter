import 'package:app/modules/auth/controllers/controllers.dart';
import 'package:app/modules/auth/widgets/input_label.dart';
import 'package:app/shared/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterUserPasswordWidget extends StatelessWidget {
  const RegisterUserPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());
    return Stack(
      children: [
        Container(
          child: Column(children: [
            Input(
              tController: controller.passwordController,
              focusNode: controller.passwordFocus,
              labelText: 'Нууц үг',
            ),
            Input(
              tController: controller.passwordRepeatController,
              focusNode: controller.passwordRepeatFocus,
              labelText: 'Нууц үг давтах',
            )
          ]),
        ),
        Positioned(
            bottom: MediaQuery.of(context).padding.bottom + 50,
            left: 0,
            right: 0,
            child: MainButton(
              child: Text('Илгээх'),
              onPressed: () {
                controller.register(context);
              },
            ))
      ],
    );
  }
}
