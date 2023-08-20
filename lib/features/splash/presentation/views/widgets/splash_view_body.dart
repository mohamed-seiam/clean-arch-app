import 'package:clean_arch_app/core/utilis/assets.dart';
import 'package:clean_arch_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utilis/app_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController ;
  late Animation<Offset> slidingAnimation ;

  @override
  void initState() {
    initSliderAnimation();
    navigateToHome();
    super.initState();
  }

  void initSliderAnimation() {
    animationController = AnimationController(vsync: this,duration: const Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(begin:const Offset(0,10 ) ,end:Offset.zero).animate(animationController);
    animationController.forward();
  }
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
       SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }
  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }
}

