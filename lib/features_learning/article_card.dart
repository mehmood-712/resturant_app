import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class ArticleCard extends StatelessWidget {
  final String title;
  final String author;
  final Color bgColor;

  const ArticleCard({
    super.key,
    required this.title,
    required this.author,
    required Color bgColor,
  }) : bgColor = bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    height: 1.25,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Container(
                      width: 18,
                      height: 18,
                      decoration: const BoxDecoration(
                        color: AppColors.placeholderBg,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      author,
                      style: const TextStyle(
                        fontSize: 11,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Icon(
                      Icons.check_circle,
                      size: 12,
                      color: Colors.black87,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Container(
            width: 58,
            height: 58,
            decoration: const BoxDecoration(
              color: AppColors.placeholderBg,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.image, color: Colors.black45, size: 24),
          ),
        ],
      ),
    );
  }
}
