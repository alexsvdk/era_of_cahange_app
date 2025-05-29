import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppFormTitle extends StatelessWidget {
  final String title;
  final String? subtitle;
  const AppFormTitle({super.key, required this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //SvgPicture.asset(Assets.svg.logo),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.start,
                  style: textTheme.headlineLarge,
                ),
                if (subtitle != null)
                  Text(
                    subtitle!,
                    textAlign: TextAlign.start,
                    style: textTheme.bodyLarge,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
