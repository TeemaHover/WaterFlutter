import 'package:app/modules/auth/auth.dart';
import 'package:app/shared/index.dart';
import 'package:app/theme/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final AuthController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // height: MediaQuery.of(context).size.height,

        child: Column(
          children: [
            Center(
                child: Obx(
              () => Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  padding: const EdgeInsets.all(origin),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        imageBg,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    // mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 16),
                          child: Obx(
                            () => controller.isPasswordFocus.value ||
                                    controller.isPhoneFocus.value
                                ? SizedBox()
                                : Image.asset(
                                    imageLogo,
                                    width: MediaQuery.of(context).size.width >
                                            400
                                        ? 150
                                        : MediaQuery.of(context).size.width *
                                            0.5,
                                  ),
                          )),
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(top: 16),
                          child: Text(
                            "Тавтай морил",
                            style: TextStyle(
                                color: controller.isPasswordFocus.value ||
                                        controller.isPhoneFocus.value
                                    // ? loginText
                                    // : primary,
                                    ? white
                                    : white,
                                fontSize: 50,
                                letterSpacing: -0.3,
                                fontWeight: FontWeight.w700),
                          )),
                      space16,
                      Column(
                        children: [
                          Obx(
                            () => TextField(
                              autofocus: true,
                              style: FontStyles.titleMedium
                                  .copyWith(fontWeight: FontWeight.normal),
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                hintText: 'Утасны дугаар',
                                hintStyle: FontStyles.titleMedium
                                    .copyWith(fontWeight: FontWeight.normal),
                                suffixIcon: IconButton(
                                    icon: !controller.isPhoneFocus.value
                                        ? Icon(
                                            Icons.phone_outlined,
                                            color: Colors.grey,
                                          )
                                        : SizedBox(),
                                    onPressed: () {}),
                              ),
                              onTap: () {
                                controller.isPhoneFocus.value = true;
                                controller.isPasswordFocus.value = false;
                              },
                              onTapOutside: (event) =>
                                  controller.isPhoneFocus.value = false,
                              onChanged: (p0) => {controller.phone.value = p0},
                            ),
                          ),
                          space16,
                          Obx(
                            () => TextFormField(
                                autofocus: true,
                                style: FontStyles.titleMedium
                                    .copyWith(fontWeight: FontWeight.normal),
                                decoration: InputDecoration(
                                  hintText: 'Нууц үг ',
                                  hintStyle: FontStyles.titleMedium
                                      .copyWith(fontWeight: FontWeight.normal),
                                  suffixIcon: IconButton(
                                      icon: Icon(
                                        controller.isVisible.value
                                            ? Icons.lock_outline
                                            : Icons.lock_open_outlined,
                                        color: Colors.grey,
                                      ),
                                      onPressed: () {
                                        controller.isVisible.value =
                                            !controller.isVisible.value;
                                      }),
                                ),
                                onTap: () {
                                  controller.isPasswordFocus.value = true;
                                  controller.isPhoneFocus.value = false;
                                },
                                onTapOutside: (event) =>
                                    controller.isPasswordFocus.value = false,
                                obscureText: controller.isVisible.value,
                                controller: controller.loginPasswordController,
                                onChanged: (p0) => {}),
                          ),
                          MainButton(
                            onPressed: () {},
                            color: Colors.transparent,
                            contentColor: primary,
                            text: 'Нууц үг мартсан ?',
                            child: const SizedBox(),
                          ),
                          space16,
                        ],
                      ),
                      // space16,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          MainButton(
                            onPressed: () async {
                              controller.login(context);
                            },
                            color: Color(0xFF1D8BE2),
                            text: 'Нэвтрэх',
                            child: const SizedBox(),
                          ),
                          space16,
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "--------",
                                ),
                                Text(" Эсвэл "),
                                Text(
                                  "--------",
                                ),
                              ],
                            ),
                          ),
                          space16,
                          MainButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(createRoute(const RegisterView()));
                            },
                            border: Border.all(color: primary),
                            // color: Colors.transparent,
                            // contentColor: primary,
                            color: Colors.white,
                            contentColor: primary,
                            text: 'Бүртгүүлэх',

                            child: const SizedBox(),
                          ),
                          space32,
                        ],
                      ),
                    ],
                  )),
            )),
          ],
        ),
      ),
    );
  }
}
