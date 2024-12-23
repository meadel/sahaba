import 'package:Sahaba/core/utils/app_colors.dart';
import 'package:Sahaba/core/utils/app_text_styles.dart';
import 'package:Sahaba/features/splash/presentation/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible: true,
          image: "assets/images/onboardingtwo.png",
          subtitle:
              ' اكتشف تجربة تسوق فريدة مع سحابة\nاستكشف مجموعتنا الواسعة من المنتجات المميزة\n واحصل على افضل العروض و الجودة العاليةتفضل',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                " مرحبا بك فى",
                style: AppTextStyles.bold23,
              ),
              Text(
                "  SAHABA ",
                style: AppTextStyles.bold23
                    .copyWith(color: AppColors.primaryColor),
              ),
            ],
          ),
        ),
        PageViewItem(
          isVisible: false,
          image: "assets/images/onboardingfour.png.png",
          subtitle:
              ' اكتشف تجربة تسوق فريدة مع سحابة\nاستكشف مجموعتنا الواسعة من المنتجات المميزة\n واحصل على افضل العروض و الجودة العاليةتفضل',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ابحث و تسوق",
                style: AppTextStyles.bold23,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
