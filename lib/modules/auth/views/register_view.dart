import 'package:app/modules/auth/controllers/controllers.dart';
import 'package:app/shared/constants/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/widgets/main_button.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  padding: const EdgeInsets.all(origin),
                  color: lightblue,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    // mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Container(
                      //   alignment: Alignment.center,
                      //   margin: const EdgeInsets.only(top: 16),
                      //   child: Image.asset(
                      //     imageLogo,
                      //     width: MediaQuery.of(context).size.width > 400
                      //         ? 200
                      //         : MediaQuery.of(context).size.width * 0.5,
                      //   ),
                      // ),
                      Container(
                          alignment: Alignment.centerLeft,
                          height: MediaQuery.of(context).size.height * 0.4,
                          margin: const EdgeInsets.only(top: 16),
                          child: const Text("Бүртгүүлэх")),
                      Column(
                        children: [
                          //Ene controliig nemeh
                          TextFormField(
                            //focusNode: controller.phoneFocus,
                            decoration: const InputDecoration(
                              hintText: 'Нэр',
                            ),
                            onChanged: (p0) =>
                                {controller.user.value?.lastName = p0},
                          ),
                          space16,
                          TextFormField(
                            //focusNode: controller.phoneFocus,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              suffixIcon: Icon(
                                Icons.email_outlined,
                                color: Colors.grey,
                              ),
                              hintText: 'Утасны дугаар',
                            ),
                            onChanged: (p0) =>
                                {controller.user.value?.phone = p0},
                          ),
                          space16,
                          TextFormField(
                              //focusNode: controller.passwordFocus,
                              decoration: InputDecoration(
                                hintText: 'Нууц үг',
                                suffixIcon: IconButton(
                                    icon: Icon(
                                      !controller.isVisible.value
                                          ? Icons.lock_outline
                                          : Icons.lock_open_outlined,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {
                                      controller.isVisible.value =
                                          !controller.isVisible.value;
                                    }),
                              ),
                              obscureText: controller.isVisible.value,
                              controller: controller.passwordController,
                              onChanged: (p0) => {}),
                          space16,
                        ],
                      ),
                      space16,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          MainButton(
                            onPressed: () async {
                              controller.register();
                            },
                            text: 'Бүртгүүлэх',
                            child: const SizedBox(),
                          ),

                          space16,
                          //ene buttonii text iig solison
                          MainButton(
                            onPressed: () {
                              // Navigator.of(context)
                              //     .push(createRoute(const RegisterView()));
                            },
                            color: Colors.transparent,
                            contentColor: primary,
                            text: 'Terms & Conditions',
                            child: const SizedBox(),
                          ),
                          space16,
                        ],
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
