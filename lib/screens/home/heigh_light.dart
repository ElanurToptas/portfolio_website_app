import 'package:flutter/material.dart';
import 'package:portfolio_website_app/constants.dart';

class HeighLight extends StatelessWidget {
  const HeighLight({super.key, required this.counter, this.label});

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        const SizedBox(width: defaultPadding / 2),
        Text(label!, style: Theme.of(context).textTheme.titleSmall),
      ],
    );
  }
}
