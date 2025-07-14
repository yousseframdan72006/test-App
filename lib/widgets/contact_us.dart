import 'package:flutter/material.dart';
import 'package:test_project/my_colors/my_colors.dart';
import 'package:test_project/widgets/email_and_phone.dart';
import 'package:test_project/widgets/media.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 535,
      decoration: BoxDecoration(color: MyColors.lightPurple),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Text(
              "تواصل معنا",
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 25),
            EmailAndPhone(
              iconPath: "assets/icons/ic_round-email.svg",
              text: "codexus.eg@gmail.com",
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(right: 90),
              child: EmailAndPhone(
                iconPath: "assets/icons/solar_phone-bold.svg",
                text: "01152400746",
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(right: 90),
              child: EmailAndPhone(
                iconPath: "assets/icons/solar_phone-bold.svg",
                text: "01112639010",
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Media(
                  IconPath: "assets/icons/logos_tiktok-icon.svg",
                  text: "TikTok",
                ),
                SizedBox(width: 25),
                Media(
                  IconPath: "assets/icons/skill-icons_instagram.svg",
                  text: "Instagram",
                ),
                SizedBox(width: 25),
                Media(
                  IconPath: "assets/icons/logos_facebook.svg",
                  text: "FaceBook",
                ),
                SizedBox(width: 25),
                Media(
                  IconPath: "assets/icons/skill-icons_linkedin.svg",
                  text: "FaceBook",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
