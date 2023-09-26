import 'package:flutter/material.dart';
import 'package:portfolio_website_app/constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Padding(
          padding:
          const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Knowledges",
              style: Theme.of(context).textTheme.titleSmall),
        ),
        const KnowledgeText(
          text: "Flutter, Dart",
        ),
        const KnowledgeText(
          text: "Stylus, Sass, Less",
        ),
        const KnowledgeText(
          text: "Gulp, Webpack, Grunt",
        ),
        const KnowledgeText(
          text: "GIT Knowledge",
        ),
      ],
    );
  }
}


class KnowledgeText extends StatelessWidget {
  const KnowledgeText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          Container(
            height: 18,
            width: 18,
            child: Image.asset("assets/icons/check.png"),),
          const SizedBox(width: defaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}
