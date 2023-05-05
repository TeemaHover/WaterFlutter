import 'package:app/modules/auth/controllers/controllers.dart';
import 'package:app/modules/auth/widgets/register_password.dart';
import 'package:app/modules/auth/widgets/widgets.dart';
import 'package:app/shared/constants/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());
    List<Widget> widgets = [
      const RegisterUserTypeWidget(),
      const RegisterUserInfo(),
      const RegisterUserPasswordWidget()
    ];
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(
              horizontal: origin, vertical: MediaQuery.of(context).padding.top),
          height: defaultHeight(context),
          child: Obx(() => widgets.firstWhere((w) {
                final i = widgets.indexOf(w);
                return controller.currentIndex.value == i;
              }))),
    );
  }
}
