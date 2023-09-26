import 'package:flutter/material.dart';
import 'package:portfolio_website_app/components/animated_Progress_Indicator.dart';
import 'package:portfolio_website_app/constants.dart';

class Coding extends StatelessWidget {
  const Coding({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Coding", style: Theme.of(context).textTheme.titleSmall),
        ),
        AnimatedLinearProgressIndicatoe(
          percentage: 0.7,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicatoe(
          percentage: 0.68,
          label: "Python",
        ),
        AnimatedLinearProgressIndicatoe(
          percentage: 0.9,
          label: "HTML",
        ),
        AnimatedLinearProgressIndicatoe(
          percentage: 0.75,
          label: "CSS",
        ),
        AnimatedLinearProgressIndicatoe(
          percentage: 0.58,
          label: "JavaScript",
        ),
      ],
    );
  }
}

