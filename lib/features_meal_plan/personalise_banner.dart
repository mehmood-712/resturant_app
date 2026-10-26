import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class PersonaliseBanner extends StatelessWidget {
  const PersonaliseBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AppColors.personaliseBannerBg,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: Text(
                  'Personalise Meal Plan',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.placeholderBg,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Icon(Icons.image, color: Colors.black45, size: 28),
              ),
            ],
          ),
          const SizedBox(height: 6),
          const SizedBox(
            width: 220,
            child: Text(
              'To personalize your menu, we still need information.',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black54,
                height: 1.3,
              ),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.personaliseButtonBg,
              foregroundColor: Colors.black87,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            child: const Text(
              'Fill in Data',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}
