import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class MacroProgressRow extends StatelessWidget {
  const MacroProgressRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _buildMacroCard(
            '0/150 g',
            'Power\nCarbs',
            AppColors.carbOrange,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: _buildMacroCard(
            '0/113 g',
            'Protein\nPower',
            AppColors.proteinYellow,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: _buildMacroCard('0/50 g', 'Healthy\nFat', AppColors.fatGrey),
        ),
      ],
    );
  }

  Widget _buildMacroCard(String amount, String title, Color color) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.cardGreyBg,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                amount,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              Container(
                width: 14,
                height: 14,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: color, width: 3),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 11,
              color: Colors.grey,
              height: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
