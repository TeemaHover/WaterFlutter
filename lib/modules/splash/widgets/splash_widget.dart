import 'package:app/shared/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'splash',
      child: Container(
        // child: Lottie.network(
        // 'https://assets3.lottiefiles.com/packages/lf20_qcl8qzt4.json'),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageLogo),
            fit: BoxFit.contain,
          ),
          // gradient: LinearGradient(
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          //   // colors: [
          //   //   onBoardColor,
          //   //   onBoardColor,
          //   //   onBoardColor,
          //   //   onBoardColor,
          //   //   onBoardColor.withOpacity(0.5),
          //   // ],
          // ),
        ),

        // child: Center(
        //   child: AppLogo(
        //     height: MediaQuery.of(context).size.height * 0.2,
        //     path: imageTdLogo,
        //   ),
        // ),
      ),
    );
  }
}
