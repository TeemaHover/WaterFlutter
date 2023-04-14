import 'package:app/binding.dart';
import 'package:app/di.dart';
import 'package:app/routes/pages.dart';
import 'package:app/theme/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DenpendencyInjection.init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark, statusBarColor: Colors.black));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Deliver',
      debugShowCheckedModeBanner: false,
      initialBinding: AppBinding(),
      defaultTransition: Transition.cupertino,
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL,
      theme: MyTheme.light,
    );
  }
}
