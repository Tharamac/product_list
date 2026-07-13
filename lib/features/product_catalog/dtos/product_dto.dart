import 'package:json_annotation/json_annotation.dart';
import 'package:product_list/features/product_catalog/domain/product.dart';

part 'product_dto.g.dart';

@JsonSerializable()
class ProductDto {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final String category;
  final double rating;
  final List<String> tags;

  const ProductDto({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.category,
    this.rating = 0.0,
    required this.tags,
  });

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDtoToJson(this);

  Product toDomain() => Product(
    id: id,
    name: name,
    description: description,
    price: price,
    imageUrl: imageUrl,
    category: category,
    tags: tags,
  );
}
