import 'package:flutter/material.dart';
import 'package:test_project/logic/scroll.dart';
import 'package:test_project/my_colors/my_colors.dart';
import 'package:test_project/widgets/contact_us.dart' show ContactUs;
import 'package:test_project/widgets/coulmn_our_services.dart'
    show CoulmnOurServices;
import 'package:test_project/widgets/hover_text.dart';
import 'package:test_project/widgets/image_and_title_text.dart';
import 'package:test_project/widgets/our_actions_speak.dart'
    show OurActionsSpeak;
import 'package:test_project/widgets/our_services.dart';
import 'package:test_project/widgets/who_are_we.dart' show WhoAreWe;

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey connect = GlobalKey();
    final GlobalKey ourBusiness = GlobalKey();
    final GlobalKey whoAreWeKey = GlobalKey();
    final GlobalKey ourServicesKey = GlobalKey();
    final GlobalKey home = GlobalKey();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 60),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () => scrollToSection(connect),
                                child: HoverText(text: "التواصل"),
                              ),
                              SizedBox(width: 30),
                              GestureDetector(
                                onTap: () => scrollToSection(ourBusiness),
                                child: HoverText(text: "اعمالنا"),
                              ),
                              SizedBox(width: 30),
                              GestureDetector(
                                onTap: () => scrollToSection(whoAreWeKey),
                                child: HoverText(text: "من نحن"),
                              ),
                              SizedBox(width: 30),
                              GestureDetector(
                                onTap: () => scrollToSection(ourServicesKey),
                                child: HoverText(text: "خدماتنا"),
                              ),
                              SizedBox(width: 30),
                              GestureDetector(
                                onTap: () => scrollToSection(home),
                                child: HoverText(text: "الرئيسية"),
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          "assets/images/logo.png",
                          height: 170,
                          width: 170,
                        ),
                      ],
                    ),
                    SizedBox(height: 80),
                    ImageAndTitleText(key: home),
                    SizedBox(height: 40),
                    Text(
                      key: ourServicesKey,
                      "خدماتنا",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Cairo",
                      ),
                    ),
                    SizedBox(height: 40),

                    CoulmnOurServices(),

                    SizedBox(height: 40),
                    Text(
                      key: ourBusiness,
                      "اعمالنا تتحدث",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Cairo",
                      ),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 500,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                decoration: BoxDecoration(color: MyColors.lightPurple),
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 1,
                        child: OurActionsSpeak(
                          imagePath: "assets/images/image1.png",
                          text: "مشروع لوكل ماركت",
                        ),
                      ),

                      SizedBox(width: 10),

                      Expanded(
                        flex: 1,
                        child: OurActionsSpeak(
                          imagePath: "assets/images/image2.png",
                          text: "مشروع موقع بيع احذية",
                        ),
                      ),
                      SizedBox(width: 10),

                      Expanded(
                        child: OurActionsSpeak(
                          imagePath: "assets/images/image3.png",
                          text: "مشروع لشركة قابضة",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                key: whoAreWeKey,
                "من نحن",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Cairo",
                ),
              ),
              SizedBox(height: 30),
              WhoAreWe(),
              SizedBox(height: 30),

              ContactUs(key: connect),
              SizedBox(height: 60),
              Text(
                "Codexus 2025 جميع الحقوق محفوظه ",
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
