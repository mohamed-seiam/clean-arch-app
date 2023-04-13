import 'package:clean_arch_app/core/utilis/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(AssetsData.logo),
        ),
       const SizedBox(height: 5,),
       const Text('Read Free Books',
         textAlign: TextAlign.center,
       ),
      ],
    );
  }
}
