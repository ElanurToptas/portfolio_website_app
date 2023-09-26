import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website_app/constants.dart';
import 'package:portfolio_website_app/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/manzara.jpeg", fit: BoxFit.cover),
          Container(
            color: darkColor.withOpacity(
              (0.66),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(" Discover my Amazing \nArt Space!",
                    style: Responsive.isDesktop(context)
                        ? Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white)
                        : Theme.of(context).textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                if (!Responsive.isDesktop(context))
                  const SizedBox(height: defaultPadding / 2),
                MyBuildAnimatedText(),
                const SizedBox(height: defaultPadding),
                if (!Responsive.isDesktop(context))
                  ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding * 2,
                          vertical: defaultPadding),
                      backgroundColor: primaryColor,
                    ),
                    child: const Text(
                      "Explore Now",
                      style: TextStyle(
                        color: darkColor,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleMedium!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isDesktop(context)) FlutterCodeText(),
          if (!Responsive.isDesktop(context))
            const SizedBox(width: defaultPadding / 2),
          const Text("I build"),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText())
              : AnimatedText(),
          if (!Responsive.isDesktop(context))
            const SizedBox(width: defaultPadding / 2),
          if (!Responsive.isDesktop(context)) FlutterCodeText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText("Responsive web and mobile app.",
            speed: const Duration(milliseconds: 60)),
        TyperAnimatedText("Compete e-Commerce app UI.",
            speed: const Duration(milliseconds: 60)),
        TyperAnimatedText("Chat app with dark light theme.",
            speed: const Duration(milliseconds: 60)),
      ],
    );
  }
}

class FlutterCodeText extends StatelessWidget {
  const FlutterCodeText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "Flutter",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}
