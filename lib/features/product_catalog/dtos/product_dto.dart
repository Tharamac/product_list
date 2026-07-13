import 'package:json_annotation/json_annotation.dart';
import 'package:product_list/features/product_catalog/domain/product.dart';

part 'product_dto.g.dart';

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

  const ProductDto({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.thumbnailUrl,
    required this.category,
    this.rating = 0.0,
    required this.tags,
  });

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDtoToJson(this);

  Product toDomain() => Product(
    id: id.toString(),
    title: title,
    description: description,
    price: price,
    rating: rating,
    imageUrl: thumbnailUrl,
    category: category,
    tags: tags,
  );
}
