

import 'package:product_list/features/product_catalog/dtos/product_response_dto.dart';

class PaginationData {
  final int total;   // total items available on server
  final int skip;     // how many items were skipped (offset)
  final int limit;    // page size
  final int currentCount; // items actually returned in this response

  const PaginationData({
    required this.total,
    required this.skip,
    required this.limit,
    required this.currentCount,
  });

  factory PaginationData.empty() {
    return PaginationData(
      total: 0,
      skip: 0,
      limit: 10,
      currentCount:0,
    );
  }

  factory PaginationData.fromJson(Map<String, dynamic> json, {int currentCount = 0}) {
    return PaginationData(
      total: json['total'] ?? 0,
      skip: json['skip'] ?? 0,
      limit: json['limit'] ?? 10,
      currentCount: currentCount,
    );
  }

  factory PaginationData.fromDto(ProductResponseDto dto) 
    => PaginationData(
      total: dto.total,
      skip: dto.skip,
      limit: dto.limit,
      currentCount: dto.productList.length,
    );
  


  /// Current page number (1-based)
  int get currentPage => (skip / limit).floor() + 1;

  /// Total number of pages
  int get totalPages => (total / limit).ceil();

  /// Whether there's more data to load
  bool get hasMore => skip + currentCount < total;

  /// Skip value to fetch the next page
  int get nextSkip => skip + limit;

  /// Skip value to fetch the previous page
  int get previousSkip => (skip - limit).clamp(0, total);

  bool get isFirstPage => skip == 0;
  bool get isLastPage => !hasMore;

  @override
  String toString() =>
      'PaginationData(total: $total, skip: $skip, limit: $limit, page: $currentPage/$totalPages, hasMore: $hasMore)';
}