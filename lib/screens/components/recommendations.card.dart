import 'package:flutter/material.dart';
import 'package:portfolio_website_app/constants.dart';
import 'package:portfolio_website_app/models/Recommerdation.dart';
import 'package:portfolio_website_app/screens/components/recommedation_card_dart.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Recommedations", style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: defaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demo_recommendations.length,
                    (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: RecommendationCard(
                    recommendation: demo_recommendations[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}