import 'package:json_annotation/json_annotation.dart';
import 'package:product_list/features/product_catalog/domain/review.dart';
import 'package:product_list/features/product_catalog/dtos/product_dto.dart';
import 'package:product_list/features/product_catalog/dtos/review_dto.dart';


class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String thumbnailUrl;
  final String category;
  final double rating;
  final List<String> tags;
  final String? brand;
  final String sku;
  final List<String> imageUrls;
  final List<ReviewData> reviews;
  final double discountPercentage;
  final int stock;
  final String availabilityStatus;
  final String warrantyInformation;
  final String shippingInformation;

  const Product({
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
  });

  factory Product.fromDTO(ProductDto dto) {
    return Product(
      id: dto.id.toString(),
      title: dto.title,
      description: dto.description,
      price: dto.price,
      thumbnailUrl: dto.thumbnailUrl,
      category: dto.category,
      tags: dto.tags,
      sku: dto.sku,
      rating: dto.rating,
      imageUrls: dto.imageUrls,
      reviews: dto.reviews
          .map((rev) => ReviewDto.fromJson(rev).toDomain())
          .toList(),
      discountPercentage: dto.discountPercentage, 
      stock: dto.stock, 
      availabilityStatus: dto.availabilityStatus, 
      warrantyInformation: dto.warrantyInformation, 
      shippingInformation: dto.shippingInformation,
    );
  }
}

// Dummy data to get the UI running
// final List<Product> dummyProducts = List.generate(
//   10,
//   (i) => Product(
//     id: 'p$i',
//     title: 'Product ${i + 1}',
//     description:
//         'This is a short description for product ${i + 1}. It highlights the key features and benefits.',
//     price: 19.99 + (i * 5),
//     thumbnailUrl: 'https://picsum.photos/seed/product$i/400/400',
//     category: i % 2 == 0 ? 'Electronics' : 'Accessories',
//     rating: 3.5 + (i % 3) * 0.5,
//     tags: [],
//     sku: '',
//     imageUrls: [],
//     reviews: [], 
//     discountPercentage: , stock: null, availabilityStatus: '', warrantyInformation: '', shippingInformation: '',
//   ),
// );
