import 'package:flutter/material.dart';
import 'package:portfolio_website_app/constants.dart';
import 'package:portfolio_website_app/screens/components/coding.dart';
import 'package:portfolio_website_app/screens/components/knowledges.dart';
import 'package:portfolio_website_app/screens/components/my_info.dart';
import 'package:portfolio_website_app/screens/components/area_info_text.dart';
import 'package:portfolio_website_app/screens/components/skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    const AreaInfoText(
                      title: "Residence",
                      text: "Türkiye",
                    ),
                    const AreaInfoText(
                      title: "City",
                      text: "Kars",
                    ),
                    const AreaInfoText(
                      title: "Age",
                      text: "21",
                    ),
                    Skills(),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "Dowlond CV",
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color),
                            ),
                           const SizedBox(width: defaultPadding / 2),
                            Container(
                                height: 12,
                                width: 12,
                                child: Image.asset("assets/icons/download.png")),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: Container(
                              height: 16,
                              width: 16,
                              child: Image.asset("assets/icons/linkedin.png"),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Container(
                              height: 16,
                              width: 16,
                              child: Image.asset("assets/icons/github.png"),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Container(
                              height: 18,
                              width: 18,
                              child: Image.asset("assets/icons/twitter.png"),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Container(
                              height: 16,
                              width: 16,
                              child: Image.asset("assets/icons/behance.png"),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
