import 'package:flutter/material.dart';
import 'package:test_project/logic/contact_us_logic.dart';
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
              onTap: () {
                ContactUsLogic().openUrlApp(
                  "https://mail.google.com/mail/?view=cm&fs=1&to=codexus.eg@gmail.com",
                );
              },
              iconPath: "assets/icons/ic_round-email.svg",
              text: "codexus.eg@gmail.com",
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(right: 90),
              child: EmailAndPhone(
                iconPath: "assets/icons/solar_phone-bold.svg",
                text: "01287067372",
              ),
            ),
            SizedBox(height: 15),

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
                  onTap:
                      () => ContactUsLogic().openUrlApp(
                        "https://www.instagram.com/codexus.eg?igsh=bjB3ejRhdzJ1YmJk",
                      ),
                ),
                SizedBox(width: 25),
                Media(
                  IconPath: "assets/icons/logos_facebook.svg",
                  text: "FaceBook",
                  onTap:
                      () => ContactUsLogic().openUrlApp(
                        "https://www.facebook.com/share/195UeNxtmK/?mibextid=wwXIfr",
                      ),
                ),
                SizedBox(width: 25),
                Media(
                  IconPath: "assets/icons/skill-icons_linkedin.svg",
                  text: "LinkedIn",
                  onTap:
                      () => ContactUsLogic().openUrlApp(
                        "https://www.linkedin.com/company/codexuss/",
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
