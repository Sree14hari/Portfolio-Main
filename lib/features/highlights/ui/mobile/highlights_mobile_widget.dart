import 'package:akshit_madan/design/constants/app_images.dart';
import 'package:akshit_madan/design/utils/app_colors.dart';
import 'package:akshit_madan/design/widgets/app_image_widget.dart';
import 'package:akshit_madan/design/widgets/buttons/app_outlined_button.dart';
import 'package:flutter/material.dart';

class HighlightsMobileWidget extends StatelessWidget {
  const HighlightsMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 100),
      // height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(color: Colors.transparent, boxShadow: [
                BoxShadow(
                  blurRadius: 200,
                  spreadRadius: 200,
                  color: AppColors.purple.withOpacity(0.4),
                )
              ]),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'About Me',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 20),
                Wrap(
                  runSpacing: 8,
                  spacing: 8,
                  direction: Axis.horizontal,
                  children: [
                    highlightContainer(
                        context,
                        false,
                        'Flutter Developer',
                        AppImages.bookmarkImage,
                        '🚀 Passionate about building beautiful, high-performance mobile and web applications using Flutter. Constantly exploring new widgets and best practices. ',
                        'SHR'),
                    highlightContainer(
                        context,
                        false,
                        'AI & ML Enthusiast',
                        AppImages.bulbImage,
                        '🤖 Pursuing BTech in AI & ML at Sree Buddha College of Engineering. Excited about machine learning, deep learning, and AI-driven applications.',
                        'SHR'),
                    highlightContainer(
                        context,
                        false,
                        'Front-End UI Designer',
                        AppImages.cupImage,
                        '🎨 Love crafting intuitive and visually appealing user interfaces. Focused on creating seamless user experiences with modern design principles.',
                        'SHR'),
                    highlightContainer(
                        context,
                        false,
                        'Lifelong Learner',
                        AppImages.pickerImage,
                        "📚 Always eager to expand my knowledge and refine my skills. Embracing new technologies and challenges to grow as a developer",
                        'SHR'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget highlightContainer(BuildContext context, bool showButton, String topic,
      imagePath, text, buttonText) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      decoration: BoxDecoration(
          color: AppColors.purpleDark.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppImageWidget(
            imageWidth: 80,
            imageHeight: 80,
            path: imagePath,
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  topic,
                  style: const TextStyle(
                      height: 1.2, fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),
                Text(
                  text,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 12),
                ),
                if (showButton) const SizedBox(height: 10),
                if (showButton)
                  AppOutlinedButton(
                    title: buttonText,
                    textStyle: const TextStyle(fontSize: 12),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
