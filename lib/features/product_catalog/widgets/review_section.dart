import 'package:flutter/material.dart';
import 'package:product_list/features/product_catalog/domain/review.dart';
import 'package:product_list/features/product_catalog/widgets/review_card.dart';

class ReviewSection extends StatelessWidget {
  final List<ReviewData> reviews;
  const ReviewSection({super.key, required this.reviews});

  double get _averageRating {
    if (reviews.isEmpty) return 0;
    return reviews.map((r) => r.rating).reduce((a, b) => a + b) / reviews.length;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Reviews',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            if (reviews.isNotEmpty)
              Row(
                children: [
                  const Icon(Icons.star, size: 18, color: Colors.amber),
                  Text(
                    _averageRating.toStringAsFixed(1),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '(${reviews.length})',
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                  ),
                ],
              ),
          ],
        ),
        const SizedBox(height: 12),
        if (reviews.isEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Center(
              child: Text(
                'No reviews yet. Be the first to review!',
                style: TextStyle(color: Colors.grey.shade600),
              ),
            ),
          )
        else
          ...reviews.map((review) => ReviewCard(review: review)),
      ],
    );
  }
}