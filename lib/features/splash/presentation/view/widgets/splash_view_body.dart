import 'dart:async';
import 'package:bookly/core/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentation/view/home_view.dart';
import 'package:bookly/features/splash/presentation/view/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    initNavigationHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(ImagePath.logo),
        const SizedBox(
          height: 15,
        ),
        SlidingAnimationText(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero).animate(
            CurvedAnimation(
                parent: animationController, curve: Curves.elasticIn));
    animationController.forward();
  }

  void initNavigationHome() {
    Future.delayed(const Duration(seconds: 7), () {
      Get.to(() => const HomeView(),
          transition: Transition.fadeIn, duration: timeNavigation);
    });
  }
}
