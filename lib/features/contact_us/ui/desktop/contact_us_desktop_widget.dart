import 'package:akshit_madan/design/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:social_media_flutter/social_media_flutter.dart';
import 'dart:html' as html;

class ContactUsDesktopWidget extends StatelessWidget {
  const ContactUsDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 60),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          'Contact Me',
          style: TextStyle(fontSize: 40),
        ),
        const SizedBox(height: 20),
        const Text("Email me at  👇"),
        const SizedBox(height: 8),
        Text(
          'sreehari14shr@gmail.com',
          style: TextStyle(color: AppColors.purple),
        ),
        const SizedBox(height: 20),
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              socialIcon('https://www.instagram.com/s_ree.har_i',
                  SocialIconsFlutter.instagram),
              socialIcon(
                  'https://github.com/Sree14hari', SocialIconsFlutter.github),
              socialIcon('https://www.linkedin.com/in/sree14hari',
                  SocialIconsFlutter.linkedin_box),
              // socialIcon(
              //     'https://www.youtube.com/channel/UCBlphb6_k7X1P28OCYXMsWg',
              //     SocialIconsFlutter.youtube)
            ],
          ),
        ),
        const Divider(),
        const SizedBox(height: 20),
        const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('©️ Sreehari R'),
            ],
          ),
        )
      ]),
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
