import 'package:flutter/material.dart';

class WhoAreWe extends StatelessWidget {
  const WhoAreWe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 40),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // الصورة بانحناء
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(
              "assets/images/who_are_you.png",
              width: 739,
              height: 462,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 40),

          // النصوص
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end, // النص يبدأ من اليمين
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "فريق Codexus",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Cairo',
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "في Codexus، إحنا مش مجرد شركة برمجة أو تصميم… إحنا شريكك الرقمي الحقيقي.\n"
                  "بدأنا من شغف مشترك بتكنولوجيا بتغيّر الواقع، وبنفس الرغبة:\n"
                  "إن كل فكرة حلوة تستاهل التنفيذ اللي يليق بيها.\n"
                  "بنصمّم، بنبرمج، و\"بنفهم\".",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Cairo',
                    height: 1.8,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.end,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
