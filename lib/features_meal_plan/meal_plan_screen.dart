import 'package:flutter/material.dart';

import 'personalise_banner.dart';
import 'meal_card.dart';

class MealPlanScreen extends StatelessWidget {
  const MealPlanScreen({super.key});

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
                _buildHeader(),
                const SizedBox(height: 16),
                const PersonaliseBanner(),
                const SizedBox(height: 22),
                _buildSectionHeader(),
                const SizedBox(height: 14),
                const MealCard(
                  title: 'Gnocchi a la\nSorrentina',
                  time: '20 min',
                ),
                const SizedBox(height: 14),
                const MealCard(
                  title: 'Chicken Salad\nLettuce Wraps',
                  time: '30 min',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return const Row(
      children: [
        Text(
          'Meal Plan',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w800,
            color: Colors.black87,
          ),
        ),
        SizedBox(width: 6),
        Text('🔥', style: TextStyle(fontSize: 22)),
      ],
    );
  }

  Widget _buildSectionHeader() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Lunch or Dinner',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        Text(
          'See all',
          style: TextStyle(
            fontSize: 13,
            color: Colors.grey,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
