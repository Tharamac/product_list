
import 'package:json_annotation/json_annotation.dart';
import 'package:product_list/features/product_catalog/dtos/product_dto.dart';


class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final String category;
  final double rating;
  final List<String> tags;

  const Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.category,
    this.rating = 0.0, 
    required this.tags,
  });
  
  factory Product.fromDTO(ProductDto dto) {
    return Product(id: dto.id.toString(), title: dto.title, description: dto.description, price: dto.price, imageUrl: dto.thumbnailUrl, category: dto.category, tags: dto.tags);
  }
}  




// Dummy data to get the UI running
final List<Product> dummyProducts = List.generate(
  10,
  (i) => Product(
    id: 'p$i',
    title: 'Product ${i + 1}',
    description:
        'This is a short description for product ${i + 1}. It highlights the key features and benefits.',
    price: 19.99 + (i * 5),
    imageUrl: 'https://picsum.photos/seed/product$i/400/400',
    category: i % 2 == 0 ? 'Electronics' : 'Accessories',
    rating: 3.5 + (i % 3) * 0.5, 
    tags: [],
  ),
);