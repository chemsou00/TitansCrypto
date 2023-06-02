import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:titans_crypto/config/constants/app_colors.dart';
import 'package:titans_crypto/controller/onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.kPrimaryColor,
      body: SpaceBackground(),
    );
  }
}

class SpaceBackground extends StatelessWidget {
  const SpaceBackground({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(OnBoardingController());
    return Stack(
      children: [
        Image.asset(
          "assets/images/onboarding/background.png",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Positioned(
          top: 45,
          left: 50,
          right: 50,
          child: GetBuilder<OnBoardingController>(builder: (logic) {
            return AnimatedBuilder(
                animation: controller.animation,
                builder: (BuildContext context, _) {
                  return Container(
                    margin: EdgeInsets.only(top: controller.animation.value),
                    child: Image.asset(
                      "assets/images/onboarding/1.png",
                      fit: BoxFit.fill,
                    ),
                  );
                });
          }),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 25),
              height: 145,
              width: Get.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.kSecondaryColor.withOpacity(0.0),
                    AppColors.kSecondaryColor.withOpacity(0.45),
                    AppColors.kSecondaryColor.withOpacity(0.75),
                    AppColors.kSecondaryColor,
                    AppColors.kPrimaryColor,
                  ],
                ),
              ),
            ),
            const Text(
              'Trade anytime anywhere',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              height: 100,
              width: Get.width * 0.9,
              // color: AppColors.kGreenColor,
              child: const Text(
                textAlign: TextAlign.center,
                "Lorem ipsum dolor sit amet,"
                " consectetur adipiscing elit,"
                " sed do eiusmod tempor incididunt ut labore et dolore.",
                style: TextStyle(fontSize: 18, color: AppColors.kSubTextColor),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PageDotsIndex extends StatelessWidget {
  const PageDotsIndex({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          3,
          (index) => AnimatedContainer(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                  color: Colors.grey, shape: BoxShape.circle),
              duration: const Duration(seconds: 1))),
    );
  }
}

class CustomNextButton extends StatelessWidget {
  const CustomNextButton({
    super.key,
    this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, bottom: 50),
      child: MaterialButton(
          minWidth: 180,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          height: 60.0,
          color: AppColors.kGreenColor,
          onPressed: onPressed,
          child: Text(
            'Next',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: AppColors.kTextColor),
          )),
    );
  }
}
