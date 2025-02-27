import 'package:akshit_madan/design/constants/app_animations.dart';
import 'package:akshit_madan/design/constants/app_images.dart';
import 'package:akshit_madan/design/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:social_media_flutter/social_media_flutter.dart';
import 'dart:html' as html;

class IntroDesktopWidget extends StatelessWidget {
  const IntroDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: w / 30),
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.bottomRight,
            child: RiveAnimation.asset(AppAnimations.introAnimation),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              Row(
                children: [
                  CircleAvatar(
                    radius: w / 14,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: w / 14 - 4,
                      backgroundImage: const AssetImage(AppImages.selfImage),
                    ),
                  ),
                  const SizedBox(width: 100),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Preah',
                                fontSize: w / 40),
                            children: [
                              const TextSpan(text: 'I am '),
                              TextSpan(
                                  text: 'Sreehari R',
                                  style: TextStyle(color: AppColors.purple))
                            ]),
                      ),
                      const SizedBox(height: 20),
                      // const Text(
                      //   'A Solopreneur,',
                      //   style: TextStyle(decoration: TextDecoration.underline),
                      // ),
                      RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.white,
                                height: 1.2,
                                fontFamily: 'Preah',
                                fontSize: w / 40,
                                fontWeight: FontWeight.bold),
                            children: [
                              const TextSpan(text: '"Designing sleek UIs  \n'),
                              const TextSpan(
                                  text: '& building intelligent apps—where\n '),
                              TextSpan(
                                  text: 'Flutter meets AI!"\t',
                                  style: TextStyle(color: AppColors.purple)),
                              const TextSpan(text: '...')
                            ]),
                      ),
                      // const Text(
                      //     'Because if the cover does not impress you what else can?'),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 60),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "I'm a Flutter Developer & ",
                    style: TextStyle(
                        color: Colors.white,
                        height: 1.2,
                        fontFamily: 'Preah',
                        fontSize: w / 28),
                  ),
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                            color: Colors.white,
                            height: 1.2,
                            fontFamily: 'Preah',
                            fontSize: w / 44,
                            fontWeight: FontWeight.bold),
                        children: const [
                          TextSpan(
                              text: ' an AI/ML Enthusiast,  ',
                              style: TextStyle(
                                  backgroundColor: Colors.yellowAccent,
                                  color: Colors.black)),
                          TextSpan(
                              text:
                                  ' crafting intuitive UIs & smart applications!')
                        ]),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    child: Row(
                      children: [
                        socialIcon('https://www.instagram.com/s_ree.har_i',
                            SocialIconsFlutter.instagram),
                        socialIcon('https://github.com/Sree14hari',
                            SocialIconsFlutter.github),
                        socialIcon('https://www.linkedin.com/in/sree14hari',
                            SocialIconsFlutter.linkedin_box),
                        // socialIcon(
                        //     'https://www.youtube.com/channel/UCBlphb6_k7X1P28OCYXMsWg',
                        //     SocialIconsFlutter.youtube)
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget socialIcon(String link, IconData iconPath) {
    return InkWell(
      onTap: () => html.window.open(link, '_blank'),
      child: SocialWidget(
        placeholderText: '',
        iconData: iconPath,
        iconColor: Colors.white,
        link: link,
      ),
    );
  }
}
