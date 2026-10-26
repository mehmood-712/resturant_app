import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import 'filter_chips_row.dart';
import 'article_card.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 480),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 12.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Learning',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 16),
                FilterChipsRow(),
                SizedBox(height: 18),
                ArticleCard(
                  title: 'Nutrition Without Obsession',
                  author: 'Nutritionisthenewblack',
                  bgColor: AppColors.articlePurpleBg,
                ),
                SizedBox(height: 12),
                ArticleCard(
                  title: 'Tricks for Citrus Peels',
                  author: 'TooGoodToGo',
                  bgColor: AppColors.articleTealBg,
                ),
                SizedBox(height: 12),
                ArticleCard(
                  title: 'ekilu, the Recipe for a Balanced Life',
                  author: 'ekilu Team',
                  bgColor: AppColors.articleYellowBg,
                ),
                SizedBox(height: 12),
                ArticleCard(
                  title: "Stick to your New Year's\nResolutions",
                  author: 'Amanda',
                  bgColor: AppColors.articleGreenBg,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
