import 'package:akshit_madan/design/utils/app_colors.dart';
import 'package:akshit_madan/design/widgets/buttons/app_outlined_button.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class NavBarDesktopWidget extends StatelessWidget {
  const NavBarDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: double.maxFinite,
        color: AppColors.navBarColor,
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 10,
            ),
            RichText(
              text: TextSpan(
                  style:
                      const TextStyle(fontFamily: 'Preah', color: Colors.white),
                  children: [
                    const TextSpan(text: 'For projects and works '),
                    TextSpan(
                      text: 'connect with me on ',
                      style: TextStyle(
                          fontFamily: 'Preah', color: AppColors.purple),
                    ),
                    const TextSpan(text: '👉  '),
                  ]),
            ),
            const SizedBox(width: 6),
            AppOutlinedButton(
              title: 'Connect with me',
              onTap: () {
                try {
                  html.window
                      .open('https://www.linkedin.com/in/sree14hari', '_blank');
                } catch (e) {
                  print(e.toString());
                }
              },
            ),
            const Spacer(),
            RichText(
              text: TextSpan(
                  style: TextStyle(
                      fontFamily: 'Preah',
                      color: AppColors.purple,
                      fontSize: 30),
                  children: const [
                    TextSpan(text: 'SHR  '),
                  ]),
            ),
          ],
        )
            // RichText(

            ));
  }
}
