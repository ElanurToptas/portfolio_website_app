import 'package:flutter/material.dart';
import 'package:portfolio_website_app/screens/components/my_projects.dart';
import 'package:portfolio_website_app/screens/components/recommendations.card.dart';
import 'package:portfolio_website_app/screens/home/heighLights.dart';
import 'package:portfolio_website_app/screens/home/home_banner.dart';
import 'package:portfolio_website_app/screens/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: <Widget>[
        HomeBanner(),
        HighLightsInfo(),
        MyProjects(),
        Recommendations(),
      ],
    );
  }
}



