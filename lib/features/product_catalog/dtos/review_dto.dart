import 'package:json_annotation/json_annotation.dart';
import 'package:product_list/features/product_catalog/domain/review.dart';

part 'review_dto.g.dart';

@JsonSerializable()
class ReviewDto{
  final int rating;
  final String comment;
  final String date;
  final String reviewerName;
  final String reviewerEmail;

  ReviewDto({required this.rating, required this.comment, required this.date, required this.reviewerName, required this.reviewerEmail});
  factory ReviewDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewDtoToJson(this);

  ReviewData toDomain() => ReviewData.fromDTO(this);
}