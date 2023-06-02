



import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController with GetSingleTickerProviderStateMixin {
  late AnimationController animatedController;
  late Animation<double> animation;

  @override
  void onInit() {
    animatedController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    animation = Tween<double>(begin: 0, end: 20).animate(
      CurvedAnimation(parent: animatedController, curve: Curves.easeInOut),
    );

    animatedController.repeat(reverse: true);
    super.onInit();
  }


  @override
  void dispose() {
    animatedController.dispose();
    super.dispose();
  }
}