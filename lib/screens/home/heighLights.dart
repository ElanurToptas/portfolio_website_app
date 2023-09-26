import 'package:flutter/material.dart';
import 'package:portfolio_website_app/components/animated_container.dart';
import 'package:portfolio_website_app/constants.dart';
import 'package:portfolio_website_app/responsive.dart';
import 'package:portfolio_website_app/screens/home/heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      label: "Subscribers",
                      counter: AnimatedCounter(
                        value: 119,
                        text: "K+",
                      ),
                    ),
                    HeighLight(
                      label: "Videos",
                      counter: AnimatedCounter(
                        value: 40,
                        text: "+",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      label: "GitHub Projects",
                      counter: AnimatedCounter(
                        value: 30,
                        text: "+",
                      ),
                    ),
                    HeighLight(
                      label: "Stars",
                      counter: AnimatedCounter(
                        value: 13,
                        text: "K+",
                      ),
                    ),
                  ],
                )
              ],
            )
          : const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeighLight(
                  label: "Subscribers",
                  counter: AnimatedCounter(
                    value: 119,
                    text: "K+",
                  ),
                ),
                HeighLight(
                  label: "Videos",
                  counter: AnimatedCounter(
                    value: 40,
                    text: "+",
                  ),
                ),
                HeighLight(
                  label: "GitHub Projects",
                  counter: AnimatedCounter(
                    value: 30,
                    text: "+",
                  ),
                ),
                HeighLight(
                  label: "Stars",
                  counter: AnimatedCounter(
                    value: 13,
                    text: "K+",
                  ),
                ),
              ],
            ),
    );
  }
}
