import 'package:app/modules/auth/auth.dart';
import 'package:app/shared/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final AuthController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 16),
                      child: Image.asset(
                        imageLogo,
                        width: MediaQuery.of(context).size.width > 400
                            ? 200
                            : MediaQuery.of(context).size.width * 0.5,
                      ),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.only(top: 16),
                        child: const Text(
                          "Тавтай морил",
                          style: TextStyle(
                              color: primary,
                              fontSize: 50,
                              letterSpacing: -0.3,
                              fontWeight: FontWeight.w700),
                        )),
                    Column(
                      children: [
                        TextFormField(
                          focusNode: controller.phoneFocus,
                          decoration: const InputDecoration(
                            labelText: 'Утасны дугаар',
                          ),
                          onChanged: (p0) => {controller.phone.value = p0},
                        ),
                        space16,
                        Obx(
                          () => TextFormField(
                              focusNode: controller.passwordFocus,
                              decoration: InputDecoration(
                                labelText: 'Нууц үг',
                                suffixIcon: IconButton(
                                    icon: Icon(
                                      !controller.isVisible.value
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {
                                      controller.isVisible.value =
                                          !controller.isVisible.value;
                                    }),
                              ),
                              obscureText: controller.isVisible.value,
                              controller: controller.loginPasswordController,
                              onChanged: (p0) => {}),
                        ),
                        space16,
                      ],
                    ),
                    space16,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        MainButton(
                          onPressed: () async {
                            controller.login(context);
                          },
                          text: 'Нэвтрэх',
                          child: const SizedBox(),
                        ),
                        MainButton(
                          onPressed: () {},
                          color: Colors.transparent,
                          contentColor: primary,
                          text: 'Нууц үг мартсан ?',
                          child: const SizedBox(),
                        ),
                        space16,
                        MainButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(createRoute(const RegisterView()));
                          },
                          color: Colors.transparent,
                          contentColor: primary,
                          text: 'Бүртгүүлэх',
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
    );
  }
}
