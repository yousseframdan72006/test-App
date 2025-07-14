import 'package:flutter/material.dart';
import 'package:test_project/my_colors/my_colors.dart';
import 'package:test_project/widgets/button.dart';

class ImageAndTitleText extends StatelessWidget {
  const ImageAndTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/images/imageAndTitle.png', height: 450, width: 450),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Codexus",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: MyColors.purple,
                  fontSize: 50,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "ازدهر بأفكارك",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  "في Codexus، بنحوّل فكرتك لموقع أو تطبيق يشتغل بذكاء\n ويتحب من أول نظرة.  تصميم – برمجة – تجربة مستخدم… كل حاجة بتتعمل بإتقان.",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: "Cairo",
                    height: 1.8,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(
                    text: "شاهد اعمالنا",
                    backGround: Colors.transparent,
                    radius: 24,
                    textColor: MyColors.lightGreen,
                    width: 260,
                    height: 64,
                    borderColor: MyColors.lightGreen,
                  ),
                  SizedBox(width: 15),
                  MyButton(
                    text: "ابدأ مشروعك الان",
                    backGround: MyColors.purple,
                    radius: 24,
                    textColor: Colors.white,
                    width: 260,
                    height: 64,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
