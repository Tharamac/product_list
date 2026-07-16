// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) => ProductDto(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  description: json['description'] as String,
  price: (json['price'] as num).toDouble(),
  thumbnailUrl: json['thumbnail'] as String,
  category: json['category'] as String,
  rating: (json['rating'] as num).toDouble(),
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  brand: json['brand'] as String?,
  sku: json['sku'] as String,
  imageUrls: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
  reviews: (json['reviews'] as List<dynamic>)
      .map((e) => e as Map<String, dynamic>)
      .toList(),
  discountPercentage: (json['discountPercentage'] as num).toDouble(),
  stock: (json['stock'] as num).toInt(),
  availabilityStatus: json['availabilityStatus'] as String,
  warrantyInformation: json['warrantyInformation'] as String,
  shippingInformation: json['shippingInformation'] as String,
  returnPolicy: json['returnPolicy'] as String,
  weight: (json['weight'] as num).toDouble(),
  dimensions: _$recordConvert(
    json['dimensions'],
    ($jsonValue) => (
      depth: ($jsonValue['depth'] as num).toDouble(),
      height: ($jsonValue['height'] as num).toDouble(),
      width: ($jsonValue['width'] as num).toDouble(),
    ),
  ),
);

Map<String, dynamic> _$ProductDtoToJson(ProductDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'thumbnail': instance.thumbnailUrl,
      'category': instance.category,
      'rating': instance.rating,
      'tags': instance.tags,
      'brand': instance.brand,
      'sku': instance.sku,
      'images': instance.imageUrls,
      'reviews': instance.reviews,
      'discountPercentage': instance.discountPercentage,
      'stock': instance.stock,
      'availabilityStatus': instance.availabilityStatus,
      'warrantyInformation': instance.warrantyInformation,
      'shippingInformation': instance.shippingInformation,
      'returnPolicy': instance.returnPolicy,
      'weight': instance.weight,
      'dimensions': <String, dynamic>{
        'depth': instance.dimensions.depth,
        'height': instance.dimensions.height,
        'width': instance.dimensions.width,
      },
    };

$Rec _$recordConvert<$Rec>(Object? value, $Rec Function(Map) convert) =>
    convert(value as Map<String, dynamic>);
