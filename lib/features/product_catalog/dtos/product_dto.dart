import 'package:json_annotation/json_annotation.dart';
import 'package:product_list/features/product_catalog/domain/product.dart';
import 'package:product_list/features/product_catalog/domain/review.dart';

part 'product_dto.g.dart';

typedef Dimension = ({double width, double height, double depth});

double toDouble(double number) {
  return number;
}

@JsonSerializable()
class ProductDto {
  final int id;
  final String title;
  final String description;
  final double price;
  @JsonKey(name: "thumbnail")
  final String thumbnailUrl;
  final String category;
  final double rating;
  final List<String> tags;
  final String? brand;
  final String sku;
  @JsonKey(name: "images")
  final List<String> imageUrls;
  final List<Map<String, dynamic>> reviews;
  final double discountPercentage;
  final int stock;
  final String availabilityStatus;
  final String warrantyInformation;
  final String shippingInformation;
  final String returnPolicy;
  final double weight;
  final Dimension dimensions;

  const ProductDto({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.thumbnailUrl,
    required this.category,
    required this.rating,
    required this.tags,
    this.brand,
    required this.sku,
    required this.imageUrls,
    required this.reviews,
    required this.discountPercentage,
    required this.stock,
    required this.availabilityStatus,
    required this.warrantyInformation,
    required this.shippingInformation,
    required this.returnPolicy,
    required this.weight,
    required this.dimensions,
  });

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDtoToJson(this);

  Product toDomain() => Product.fromDTO(this);
}
