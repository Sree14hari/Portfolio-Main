import 'package:akshit_madan/design/constants/app_constants.dart';
import 'package:akshit_madan/design/utils/app_colors.dart';
import 'package:akshit_madan/design/widgets/app_image_widget.dart';
import 'package:flutter/material.dart';

class TechstackMobileWidget extends StatelessWidget {
  const TechstackMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  style: const TextStyle(
                      color: Colors.white, fontFamily: 'Preah', fontSize: 19),
                  children: [
                    const TextSpan(
                        text: 'I am skilled in an array of cutting-edge  '),
                    TextSpan(
                        text: 'technologies, ',
                        style: TextStyle(color: AppColors.purple)),
                    const TextSpan(
                        text:
                            'enabling me to craft intuitive and intelligent solutions.'),
                  ]),
            ),
            const SizedBox(height: 20),
            Container(
              // width: ,
              child: const Text(
                "As a Flutter Developer, AI/ML Enthusiast, and Front-End UI Designer, I am passionate about building seamless user experiences and smart applications. I thrive on learning new technologies and applying AI-driven innovations to create impactful digital solutions",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12),
              ),
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                Wrap(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        4,
                        (index) => techStackCircle(
                            techStackImages.values.toList()[index]))),
                // Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: List.generate(
                //         6,
                //         (index) => techStackCircle(techStackImages.values
                //             .toList()
                //             .reversed
                //             .toList()[index])))
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget techStackCircle(String imagePath) {
    return Container(
      margin: const EdgeInsets.all(6),
      height: 54,
      width: 54,
      padding: const EdgeInsets.all(8),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: AppColors.violet),
      child: AppImageWidget(
        path: imagePath,
      ),
    );
  }
}
