import 'package:product_list/features/product_catalog/dtos/review_dto.dart';

class ReviewData{
  final int rating;
  final String comment;
  final DateTime date;
  final String reviewerName;
  final String reviewerEmail;

  ReviewData({required this.rating, required this.comment, required this.date, required this.reviewerName, required this.reviewerEmail});
    factory ReviewData.fromDTO(ReviewDto dto) {
    return ReviewData(
      reviewerName: dto.reviewerName,
      reviewerEmail: dto.reviewerEmail,
      date: DateTime.parse(dto.date),
      rating: dto.rating,
      comment: dto.comment,
    );
  }
}