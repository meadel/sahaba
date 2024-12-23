import 'package:Sahaba/core/utils/app_text_styles.dart';
import 'package:Sahaba/features/auth/presenation/views/login_view.dart';
import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.subtitle,
    required this.title,
    required this.isVisible,
  });

  final String image;
  final String subtitle;
  final Widget title;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .5,
          child: Stack(
            children: [
              Positioned.fill(
                bottom: 0,
                left: 0,
                right: 0,
                child: Image.asset(image),
              ),
              Visibility(
                visible: isVisible,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(LoginView.routeName);
                  },
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "تخط",
                      style: AppTextStyles.bold13,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        title,
        const SizedBox(
          height: 30,
        ),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: AppTextStyles.bold13.copyWith(
            color: const Color.fromARGB(255, 131, 134, 138),
          ),
        ),
      ],
    );
  }
}
