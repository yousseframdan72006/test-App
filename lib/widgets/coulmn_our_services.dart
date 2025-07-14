import 'package:flutter/material.dart';
import 'package:test_project/widgets/our_services.dart' show OurServices;

class CoulmnOurServices extends StatelessWidget {
  const CoulmnOurServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),

        Row(
          children: [
            Expanded(
              child: OurServices(
                imagePath: "assets/icons/iconsax-shop-add.svg",
                title: "التجارة الإلكترونية",
                supTitle: "نطور حلول تجارة إلكترونية متكاملة",
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: OurServices(
                imagePath: "assets/icons/iconsax-pen-tool.svg",
                title: "UI UX تصميم",
                supTitle: "نصمم واجهات مستخدم عصرية وسلسة",
              ),
            ),
          ],
        ),
        SizedBox(height: 30),

        Row(
          children: [
            Expanded(
              child: OurServices(
                imagePath: "assets/icons/Clip path group.svg",
                title: "تطوير الويب",
                supTitle: "نطور مواقع ويب متقدمة وسريعة الاستجابة",
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: OurServices(
                imagePath: "assets/icons/iconsax-mobile.svg",
                title: "تطبيقات الموبايل",
                supTitle: "نبني تطبيقات جوال عالية الأداء",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
