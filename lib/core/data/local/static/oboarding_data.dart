import 'package:titans_crypto/core/data/local/model/onboarding_model.dart';

class ImagePath {
  static const String path = "assets/images/onboarding/";

  //==============
  static const String firstImage = "$path/1.png";
  static const String secondImage = "$path/2.png";
  static const String thirdImage = "$path/3.png";
}

List<OnBoardingModel> onBoardingData = const [
  OnBoardingModel(
      image: ImagePath.firstImage,
      title: "Trade anytime anywhere",
      description: "Lorem ipsum dolor sit amet,"
          " consectetur adipiscing elit,"
          " sed do eiusmod tempor incididunt ut labore et dolore."),
  OnBoardingModel(
      image: ImagePath.firstImage,
      title: "Save and invest at the same time",
      description: "Lorem ipsum dolor sit amet,"
          " consectetur adipiscing elit,"
          " sed do eiusmod tempor incididunt ut labore et dolore."),
  OnBoardingModel(
      image: ImagePath.thirdImage,
      title: "Transact fast and easy",
      description:
          "Lorem ipsum dolor sit amet,"
              " consectetur adipiscing elit,"
              " sed do eiusmod tempor incididunt ut labore et dolore."),
];
