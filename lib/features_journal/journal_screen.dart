import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import 'calories_card.dart';
import 'macro_progress_row.dart';
import 'meal_category_card.dart';

class JournalScreen extends StatelessWidget {
  const JournalScreen({super.key});

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
              children: [
                const Text(
                  'Journal',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 16),
                const CaloriesCard(),
                const SizedBox(height: 16),
                const MacroProgressRow(),
                const SizedBox(height: 18),
                _buildMealGrid(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMealGrid() {
    return Column(
      children: [
        Row(
          children: const [
            Expanded(
              child: MealCategoryCard(
                title: 'Breakfast',
                calories: '631 kcal',
                bgColor: AppColors.breakfastBg,
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: MealCategoryCard(
                title: 'Lunch',
                calories: '486 kcal',
                bgColor: AppColors.lunchBg,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: const [
            Expanded(
              child: MealCategoryCard(
                title: 'Dinner',
                calories: '359 kcal',
                bgColor: AppColors.dinnerBg,
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: MealCategoryCard(
                title: 'Snacks',
                calories: '193 kcal',
                bgColor: AppColors.snackBg,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
